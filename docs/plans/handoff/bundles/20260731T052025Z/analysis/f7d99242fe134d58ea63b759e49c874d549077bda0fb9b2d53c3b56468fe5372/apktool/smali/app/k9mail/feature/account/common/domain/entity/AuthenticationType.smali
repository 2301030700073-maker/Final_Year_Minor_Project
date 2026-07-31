.class public final enum Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public static final enum ClientCertificate:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public static final Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

.field public static final enum None:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public static final enum OAuth2:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public static final enum PasswordCleartext:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

.field public static final enum PasswordEncrypted:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;


# instance fields
.field public final isPasswordRequired:Z

.field public final isUsernameRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 2
    .line 3
    const-string v1, "None"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2, v2}, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;-><init>(Ljava/lang/String;IZZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->None:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 10
    .line 11
    new-instance v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 12
    .line 13
    const-string v3, "PasswordCleartext"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4, v4}, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;-><init>(Ljava/lang/String;IZZ)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordCleartext:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 20
    .line 21
    new-instance v3, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 22
    .line 23
    const-string v5, "PasswordEncrypted"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v4, v4}, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;-><init>(Ljava/lang/String;IZZ)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->PasswordEncrypted:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 30
    .line 31
    new-instance v5, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 32
    .line 33
    const-string v7, "ClientCertificate"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v4, v2}, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;-><init>(Ljava/lang/String;IZZ)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->ClientCertificate:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 40
    .line 41
    new-instance v7, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 42
    .line 43
    const-string v9, "OAuth2"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v4, v2}, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;-><init>(Ljava/lang/String;IZZ)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->OAuth2:Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 50
    .line 51
    const/4 v9, 0x5

    .line 52
    new-array v9, v9, [Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 53
    .line 54
    aput-object v0, v9, v2

    .line 55
    .line 56
    aput-object v1, v9, v4

    .line 57
    .line 58
    aput-object v3, v9, v6

    .line 59
    .line 60
    aput-object v5, v9, v8

    .line 61
    .line 62
    aput-object v7, v9, v10

    .line 63
    .line 64
    sput-object v9, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->$VALUES:[Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 65
    .line 66
    new-instance v0, Lkotlin/enums/EnumEntriesList;

    .line 67
    .line 68
    invoke-direct {v0, v9}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 72
    .line 73
    new-instance v0, Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->Companion:Lcom/mikepenz/fastadapter/VerboseLogger;

    .line 79
    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isUsernameRequired:Z

    .line 5
    .line 6
    iput-boolean p4, p0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->isPasswordRequired:Z

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;
    .locals 1

    .line 1
    const-class v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;->$VALUES:[Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lapp/k9mail/feature/account/common/domain/entity/AuthenticationType;

    .line 8
    .line 9
    return-object v0
.end method
