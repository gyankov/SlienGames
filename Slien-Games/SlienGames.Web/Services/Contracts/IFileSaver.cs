﻿
namespace SlienGames.Web.Services.Contracts
{
    public interface IFileSaver
    {
        void SaveFile(string filePath, byte[] allBytes);
    }
}
