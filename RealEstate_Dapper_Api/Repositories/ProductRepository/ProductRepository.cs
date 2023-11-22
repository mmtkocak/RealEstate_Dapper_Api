﻿using Dapper;
using RealEstate_Dapper_Api.Dtos.ProductDtos;
using RealEstate_Dapper_Api.Models.DapperContext;

namespace RealEstate_Dapper_Api.Repositories.ProductRepository
{
    public class ProductRepository : IProductRepository
    {
        private readonly Context _context;

        public ProductRepository(Context context)
        {
            _context = context;
        }

        public async Task<List<ResultProdcutWithCategoryDto>> GetAllProdcutWithCategoryAsync()
        {
            string query = "Select ProductID,Title,Price,City,District,CategoryName,CoverImage,Type,Address,DealOfTheDay from Product inner join Category on Product.ProductCategory=Category.CategoryID";
            using (var connection = _context.CreateConnection())
            {
                var values = await connection.QueryAsync<ResultProdcutWithCategoryDto>(query);
                return values.ToList();
            }
        }

        public async Task<List<ResultProductDto>> GetAllProductAsync()
        {
            string query = "Select * from Product";
            using (var connection = _context.CreateConnection())
            {
                var values = await connection.QueryAsync<ResultProductDto>(query);
                return values.ToList();
            }
        }

        public async void ProductDealOfTheDayStatusChangeToFalse(int id)
        {
            string query = "update Product set DealOfTheDay=@dealOfTheDay where ProductId=@productId";
            var parameters = new DynamicParameters();
            parameters.Add("@dealOfTheDay", false);
            parameters.Add("@productId", id);

            using (var connection = _context.CreateConnection())
            {
                await connection.ExecuteAsync(query, parameters);
            }
        }

        public async void ProductDealOfTheDayStatusChangeToTrue(int id)
        {
            string query = "update Product set DealOfTheDay=@dealOfTheDay where ProductId=@productId";
            var parameters = new DynamicParameters();
            parameters.Add("@dealOfTheDay", true);
            parameters.Add("@productId", id);
            
            using (var connection = _context.CreateConnection())
            {
                await connection.ExecuteAsync(query, parameters);
            }
        }
    }
}
