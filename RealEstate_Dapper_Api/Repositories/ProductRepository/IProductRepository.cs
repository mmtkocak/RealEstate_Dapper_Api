using RealEstate_Dapper_Api.Dtos.ProductDtos;

namespace RealEstate_Dapper_Api.Repositories.ProductRepository
{
    public interface IProductRepository
    {
        Task<List<ResultProductDto>> GetAllProductAsync();
        Task<List<ResultProdcutWithCategoryDto>> GetAllProdcutWithCategoryAsync();

        void ProductDealOfTheDayStatusChangeToTrue(int id);
        void ProductDealOfTheDayStatusChangeToFalse(int id);

        Task<List<ResultLast5ProductWithCategoryDto>> GetLast5ProductAsync();


        Task<List<ResultProductAdvertListWithCategoryByEmployeeDto>> GetAllProductAdvertListByEmployeeAsync(int id);
    }
}
