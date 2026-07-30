.class Lcom/android/contacts/model/account/BaseAccountType$GroupMembershipKindBuilder;
.super Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GroupMembershipKindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1341
    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 1341
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$GroupMembershipKindBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public getTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "group_membership"

    return-object v0
.end method

.method public parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
    .locals 11
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

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/group_membership"

    const/4 v6, 0x0

    const v7, 0x7f100147

    const/16 v8, 0x96

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1351
    invoke-virtual/range {v0 .. v10}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object p1

    .line 1355
    iget-object p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    new-instance p3, Lcom/android/contacts/model/account/AccountType$EditField;

    const-string v0, "data1"

    const/4 v1, -0x1

    invoke-direct {p3, v0, v1, v1}, Lcom/android/contacts/model/account/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 p2, 0xa

    .line 1356
    iput p2, p1, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    .line 1358
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/contacts/model/dataitem/DataKind;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 1360
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
