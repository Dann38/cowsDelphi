object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 330
  Width = 536
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite'
      'Database=C:\Users\danii\'#1056#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083'\cow.db')
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object tblCow: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'cow'
    TableName = 'cow'
    Left = 16
    Top = 112
    object tblCowid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblCowid_status: TIntegerField
      FieldName = 'id_status'
      Origin = 'id_status'
      Required = True
    end
    object tblCowdate: TDateField
      FieldName = 'date'
      Origin = 'date'
    end
    object tblCowstatus: TStringField
      FieldKind = fkLookup
      FieldName = 'status'
      LookupDataSet = tblStatus
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'id_status'
      LookupCache = True
      Size = 32
      Lookup = True
    end
  end
  object dsCow: TDataSource
    DataSet = tblCow
    Left = 16
    Top = 160
  end
  object tblStatus: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'status'
    TableName = 'status'
    Left = 56
    Top = 112
  end
  object dsStatus: TDataSource
    DataSet = tblStatus
    Left = 56
    Top = 160
  end
  object tblHistory: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'history'
    TableName = 'history'
    Left = 96
    Top = 112
  end
  object dsHistory: TDataSource
    DataSet = tblHistory
    Left = 96
    Top = 160
  end
  object tblFeature: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'feature'
    TableName = 'feature'
    Left = 224
    Top = 112
    object tblFeatureid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblFeaturename: TStringField
      FieldName = 'name'
      Origin = 'name'
      Required = True
      Size = 128
    end
  end
  object dsFeature: TDataSource
    DataSet = tblFeature
    Left = 224
    Top = 160
  end
  object tblFeatureCow: TFDTable
    IndexFieldNames = 'id;id_feature'
    MasterSource = dsCow
    MasterFields = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'feature_cow'
    TableName = 'feature_cow'
    Left = 176
    Top = 112
    object tblFeatureCowid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblFeatureCowid_feature: TIntegerField
      FieldName = 'id_feature'
      Origin = 'id_feature'
    end
    object tblFeatureCowfeature: TStringField
      FieldKind = fkLookup
      FieldName = 'feature'
      LookupDataSet = tblFeature
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'id_feature'
      LookupCache = True
      Size = 128
      Lookup = True
    end
  end
  object dsFeatureCow: TDataSource
    DataSet = tblFeatureCow
    Left = 176
    Top = 160
  end
  object tblColving: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'colving'
    TableName = 'colving'
    Left = 264
    Top = 112
    object tblColvingid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tblColvingid_cow: TIntegerField
      FieldName = 'id_cow'
      Origin = 'id_cow'
    end
    object tblColvingid_colf: TIntegerField
      FieldName = 'id_colf'
      Origin = 'id_colf'
    end
    object tblColvingdate: TDateField
      FieldKind = fkLookup
      FieldName = 'date'
      LookupDataSet = tblCow
      LookupKeyFields = 'id'
      LookupResultField = 'date'
      KeyFields = 'id_colf'
      LookupCache = True
      Lookup = True
    end
  end
  object dsColving: TDataSource
    DataSet = tblColving
    Left = 264
    Top = 160
  end
  object tblMainCow: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'feature_cow'
    TableName = 'feature_cow'
    Left = 344
    Top = 112
    object tblMainCowid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object tblMainCowid_feature: TIntegerField
      FieldName = 'id_feature'
      Origin = 'id_feature'
      Visible = False
    end
    object tblMainCowfeature: TStringField
      FieldKind = fkLookup
      FieldName = 'feature'
      LookupDataSet = tblFeature
      LookupKeyFields = 'id'
      LookupResultField = 'name'
      KeyFields = 'id_feature'
      LookupCache = True
      Size = 128
      Lookup = True
    end
  end
  object dsMainCow: TDataSource
    DataSet = qFilterCow
    Left = 344
    Top = 160
  end
  object qAppCow: TFDQuery
    Connection = FDConnection1
    Left = 392
    Top = 112
  end
  object qFilterCow: TFDQuery
    FilterOptions = [foCaseInsensitive, foNoPartialCompare]
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT fc.id, f.name FROM feature_cow as fc LEFT JOIN feature as' +
        ' f ON fc.id_feature = f.id UNION SELECT id, "" FROM cow;')
    Left = 344
    Top = 64
  end
  object qCount: TFDQuery
    Connection = FDConnection1
    Left = 432
    Top = 112
  end
  object qUpdateDate: TFDQuery
    Connection = FDConnection1
    Left = 472
    Top = 112
  end
  object tblImageCow: TFDTable
    IndexFieldNames = 'id;image'
    MasterSource = dsCow
    MasterFields = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'image_cow'
    TableName = 'image_cow'
    Left = 16
    Top = 224
    object tblImageCowid: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tblImageCowimage: TBlobField
      FieldName = 'image'
      Origin = 'image'
    end
  end
  object dsImageCow: TDataSource
    DataSet = tblImageCow
    Left = 16
    Top = 272
  end
  object dsImage: TDataSource
    DataSet = tblImage
    Left = 64
    Top = 272
  end
  object tblImage: TFDTable
    IndexFieldNames = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'image_cow'
    TableName = 'image_cow'
    Left = 64
    Top = 224
    object tblImageid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tblImageimage: TBlobField
      FieldName = 'image'
      Origin = 'image'
    end
  end
  object tblImgMainCow: TFDTable
    IndexFieldNames = 'id'
    MasterSource = dsMainCow
    MasterFields = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'image_cow'
    TableName = 'image_cow'
    Left = 344
    Top = 216
  end
  object dsImgMainCow: TDataSource
    DataSet = tblImgMainCow
    Left = 344
    Top = 264
  end
  object tblColvingMain: TFDTable
    IndexFieldNames = 'id_cow;id;id_colf'
    MasterSource = dsMainCow
    MasterFields = 'id'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'colving'
    TableName = 'colving'
    Left = 264
    Top = 208
    object tblColvingMainid_cow: TIntegerField
      FieldName = 'id_cow'
      Origin = 'id_cow'
      Visible = False
    end
    object tblColvingMainid_colf: TIntegerField
      FieldName = 'id_colf'
      Origin = 'id_colf'
    end
    object tblColvingMainid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object tblColvingMaindate: TDateField
      FieldKind = fkLookup
      FieldName = 'date'
      LookupDataSet = tblCow
      LookupKeyFields = 'id'
      LookupResultField = 'date'
      KeyFields = 'id_colf'
      LookupCache = True
      Lookup = True
    end
  end
  object dsColvingMain: TDataSource
    DataSet = tblColvingMain
    Left = 264
    Top = 256
  end
end
