

abstract class CllubbStates {}

class ShopInitialState extends CllubbStates {}

class ShopChangeBottomNavState extends CllubbStates{}

class ShopChangeModeState extends CllubbStates{}


class ShopLoadingHomeDataState extends CllubbStates{}

class ShopSuccessHomeDataState extends CllubbStates{}

class ShopErrorHomeDataState extends CllubbStates {}

class ShopSuccessCategoriesState extends CllubbStates{}

class ShopErrorCategoriesState extends CllubbStates {}

class ShopChangeFavoritesState extends CllubbStates {}

class ShopSuccessChangeFavoritesState extends CllubbStates
{
  // final ChangeFavoritesModel model;
  //
  // ShopSuccessChangeFavoritesState(this.model);

}

class ShopErrorChangeFavoritesState extends CllubbStates {}

class ShopLoadingGetFavoritesState extends CllubbStates {}

class ShopSuccessGetFavoritesState extends CllubbStates{}

class ShopErrorGetFavoritesState extends CllubbStates {}

class ShopLoadingUserDataState extends CllubbStates {}

class ShopSuccessUserDataState extends CllubbStates
{
  // final ShopLoginModel loginModel;
  //
  // ShopSuccessUserDataState(this.loginModel);
}

class ShopErrorUserDataState extends CllubbStates {}

class ShopLoadingUpdateUserState extends CllubbStates {}

class ShopSuccessUpdateUserState extends CllubbStates
{
  // final ShopLoginModel loginModel;
  //
  // ShopSuccessUpdateUserState(this.loginModel);
}

class ShopErrorUpdateUserState extends CllubbStates {}



