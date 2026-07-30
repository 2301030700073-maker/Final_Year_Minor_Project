.class public abstract enum Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
.super Ljava/lang/Enum;
.source "AccountTypeManager.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AccountFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/contacts/model/AccountTypeManager$AccountFilter;",
        ">;",
        "Lcom/google/common/base/Predicate<",
        "Lcom/android/contacts/model/account/AccountInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

.field public static final enum ALL:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

.field public static final enum CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

.field public static final enum GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 86
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$1;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->ALL:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 92
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$2;

    const-string v1, "CONTACTS_WRITABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 98
    new-instance v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$3;

    const-string v1, "GROUPS_WRITABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->GROUPS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    .line 85
    sget-object v5, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->ALL:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    aput-object v5, v1, v2

    sget-object v2, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->CONTACTS_WRITABLE:Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->$VALUES:[Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/contacts/model/AccountTypeManager$1;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
    .locals 1

    .line 85
    const-class v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    return-object p0
.end method

.method public static values()[Lcom/android/contacts/model/AccountTypeManager$AccountFilter;
    .locals 1

    .line 85
    sget-object v0, Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->$VALUES:[Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    invoke-virtual {v0}, [Lcom/android/contacts/model/AccountTypeManager$AccountFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/contacts/model/AccountTypeManager$AccountFilter;

    return-object v0
.end method
