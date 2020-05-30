object DataModule1: TDataModule1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 209
  Width = 601
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
    Left = 352
    Top = 160
  end
  object qAppCow: TFDQuery
    Connection = FDConnection1
    Left = 392
    Top = 112
  end
  object qFilterCow: TFDQuery
    Connection = FDConnection1
    Left = 344
    Top = 64
  end
end
