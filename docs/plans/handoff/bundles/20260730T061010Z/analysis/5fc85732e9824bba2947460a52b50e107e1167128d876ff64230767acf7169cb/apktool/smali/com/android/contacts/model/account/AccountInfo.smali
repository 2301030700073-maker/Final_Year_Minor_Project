.class public Lcom/android/contacts/model/account/AccountInfo;
.super Ljava/lang/Object;
.source "AccountInfo.java"


# static fields
.field public static final ACCOUNT_EXTRACTOR:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

.field private final mType:Lcom/android/contacts/model/account/AccountType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/android/contacts/model/account/AccountInfo$2;

    invoke-direct {v0}, Lcom/android/contacts/model/account/AccountInfo$2;-><init>()V

    sput-object v0, Lcom/android/contacts/model/account/AccountInfo;->ACCOUNT_EXTRACTOR:Lcom/google/common/base/Function;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/model/account/AccountDisplayInfo;Lcom/android/contacts/model/account/AccountType;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    .line 39
    iput-object p2, p0, Lcom/android/contacts/model/account/AccountInfo;->mType:Lcom/android/contacts/model/account/AccountType;

    return-void
.end method

.method public static contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ")Z"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/contacts/model/account/AccountInfo;->contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result p0

    return p0
.end method

.method public static contains(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")Z"
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static extractAccounts(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .line 136
    sget-object v0, Lcom/android/contacts/model/account/AccountInfo;->ACCOUNT_EXTRACTOR:Lcom/google/common/base/Function;

    invoke-static {p0, v0}, Lcom/google/common/collect/Lists;->transform(Ljava/util/List;Lcom/google/common/base/Function;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAccount(Ljava/util/List;Lcom/android/contacts/model/account/AccountWithDataSet;)Lcom/android/contacts/model/account/AccountInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")",
            "Lcom/android/contacts/model/account/AccountInfo;"
        }
    .end annotation

    .line 115
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountInfo;

    .line 118
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/account/AccountInfo;->sameAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static sortAccounts(Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/util/List<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/android/contacts/model/account/AccountInfo;->sourceComparator(Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static sourceComparator(Lcom/android/contacts/model/account/AccountWithDataSet;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            ")",
            "Ljava/util/Comparator<",
            "Lcom/android/contacts/model/account/AccountInfo;",
            ">;"
        }
    .end annotation

    .line 140
    new-instance v0, Lcom/android/contacts/model/account/AccountComparator;

    invoke-direct {v0, p0}, Lcom/android/contacts/model/account/AccountComparator;-><init>(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 141
    new-instance p0, Lcom/android/contacts/model/account/AccountInfo$1;

    invoke-direct {p0, v0}, Lcom/android/contacts/model/account/AccountInfo$1;-><init>(Lcom/android/contacts/model/account/AccountComparator;)V

    return-object p0
.end method


# virtual methods
.method public getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getSource()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getNameLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getNameLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/contacts/model/account/AccountType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mType:Lcom/android/contacts/model/account/AccountType;

    return-object v0
.end method

.method public getTypeLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->getTypeLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasDistinctName()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->hasDistinctName()Z

    move-result v0

    return v0
.end method

.method public hasGoogleAccountType()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->hasGoogleAccountType()Z

    move-result v0

    return v0
.end method

.method public isDeviceAccount()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/contacts/model/account/AccountInfo;->mDisplayInfo:Lcom/android/contacts/model/account/AccountDisplayInfo;

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountDisplayInfo;->isDeviceAccount()Z

    move-result v0

    return v0
.end method

.method public sameAccount(Lcom/android/contacts/model/account/AccountInfo;)Z
    .locals 0

    .line 84
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/contacts/model/account/AccountInfo;->sameAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z

    move-result p1

    return p1
.end method

.method public sameAccount(Lcom/android/contacts/model/account/AccountWithDataSet;)Z
    .locals 1

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/model/account/AccountInfo;->getAccount()Lcom/android/contacts/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
