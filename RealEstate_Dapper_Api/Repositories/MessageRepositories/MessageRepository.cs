using Dapper;
using RealEstate_Dapper_Api.Dtos.MessageDtos;
using RealEstate_Dapper_Api.Models.DapperContext;

namespace RealEstate_Dapper_Api.Repositories.MessageRepositories
{
    public class MessageRepository : IMessageRepository
    {
        private readonly Context _context;

        public MessageRepository(Context context)
        {
            _context = context;
        }

        public async Task<List<ResultInBoxMessageDto>> GetInBoxLast3MessageListByReceiver(int id)
        {
            string query = "select Top(3) MessageId,Name,Subject,Detail,SendDate,IsRead,UserImageUrl from Message Inner Join AppUser On Message.Sender=AppUser.UserId where Receiver=@receiverid order by MessageId desc";
            var parameters = new DynamicParameters();
            parameters.Add("@receiverid", id);
            using (var connection = _context.CreateConnection())
            {
                var values = await connection.QueryAsync<ResultInBoxMessageDto>(query, parameters);
                return values.ToList();
            }
        }
    }
}
