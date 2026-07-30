.class Lcom/android/contacts/model/account/BaseAccountType$NoteKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoteKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1268
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$NoteKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "note"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/dataitem/DataKind;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    new-instance v9, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const v11, 0x7f10016b

    invoke-direct {v9, v11}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(I)V

    new-instance v10, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v12, "data1"

    invoke-direct {v10, v12}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/note"

    const/4 v6, 0x0

    const v7, 0x7f10016b

    const/16 v8, 0x82

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 1282
    iget-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/account/AccountType$EditField;

    const v3, 0x24001

    invoke-direct {v2, v12, v11, v3}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x64

    .line 1283
    iput v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    move-object v1, p0

    .line 1285
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 1287
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
