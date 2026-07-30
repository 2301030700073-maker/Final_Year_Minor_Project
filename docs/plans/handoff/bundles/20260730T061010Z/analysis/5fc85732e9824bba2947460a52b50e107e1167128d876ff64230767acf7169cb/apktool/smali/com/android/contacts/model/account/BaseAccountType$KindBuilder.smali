.class abstract Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;
.super Ljava/lang/Object;
.source "BaseAccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/account/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "KindBuilder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/account/BaseAccountType$1;)V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;-><init>()V

    return-void
.end method

.method private parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    const-string p1, "type"

    .line 835
    invoke-static {p2, p1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1400(Landroid/util/AttributeSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-virtual {p0, p2, p1}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string p3, "maxOccurs"

    .line 842
    invoke-static {p2, p3, p1}, Lcom/android/contacts/model/account/BaseAccountType;->access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/contacts/model/account/AccountType$EditType;->specificMax:I

    return-object v0

    .line 839
    :cond_0
    new-instance p2, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Undefined type \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' for data kind \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p3, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/dataitem/DataKind;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    .line 806
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 807
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, p1, :cond_5

    .line 808
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    add-int/lit8 v0, p1, 0x1

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 813
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Type"

    .line 814
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p5, :cond_3

    .line 816
    iget-object v0, p4, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->parseTypeTag(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/dataitem/DataKind;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :cond_3
    new-instance p1, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Kind "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p4, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " can\'t have types"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 822
    :cond_4
    new-instance p1, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method


# virtual methods
.method protected buildEditTypeForTypeTag(Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType$EditType;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method protected final newDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ZLjava/lang/String;Ljava/lang/String;IILcom/android/contacts/model/account/AccountType$StringInflater;Lcom/android/contacts/model/account/AccountType$StringInflater;)Lcom/android/contacts/model/dataitem/DataKind;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BaseAccountType"

    const/4 v1, 0x3

    .line 761
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding DataKind: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    const/4 v1, 0x1

    invoke-direct {v0, p5, p7, p8, v1}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZ)V

    .line 766
    iput-object p6, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 767
    iput-object p9, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionHeader:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 768
    iput-object p10, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 769
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p5

    iput-object p5, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    if-nez p4, :cond_3

    const/4 p4, -0x1

    const-string p5, "maxOccurs"

    .line 774
    invoke-static {p3, p5, p4}, Lcom/android/contacts/model/account/BaseAccountType;->access$1500(Landroid/util/AttributeSet;Ljava/lang/String;I)I

    move-result p4

    iput p4, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    .line 779
    iget-object p4, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz p4, :cond_2

    .line 781
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p4

    iput-object p4, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    const/4 p9, 0x1

    move-object p4, p0

    move-object p5, p1

    move-object p6, p2

    move-object p7, p3

    move-object p8, v0

    .line 782
    invoke-direct/range {p4 .. p9}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/dataitem/DataKind;Z)V

    .line 783
    iget-object p1, v0, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 784
    :cond_1
    new-instance p1, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Kind "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " must have at least one type"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p9, 0x0

    move-object p4, p0

    move-object p5, p1

    move-object p6, p2

    move-object p7, p3

    move-object p8, v0

    .line 789
    invoke-direct/range {p4 .. p9}, Lcom/android/contacts/model/account/BaseAccountType$KindBuilder;->parseTypes(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/android/contacts/model/dataitem/DataKind;Z)V

    :cond_3
    :goto_0
    return-object v0
.end method

.method public abstract parseDataKind(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Ljava/util/List;
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
.end method

.method protected final throwIfList(Lcom/android/contacts/model/dataitem/DataKind;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/account/AccountType$DefinitionException;
        }
    .end annotation

    .line 857
    iget v0, p1, Lcom/android/contacts/model/dataitem/DataKind;->typeOverallMax:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 858
    :cond_0
    new-instance v0, Lcom/android/contacts/model/account/AccountType$DefinitionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have \'overallMax=\"1\"\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/contacts/model/account/AccountType$DefinitionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
