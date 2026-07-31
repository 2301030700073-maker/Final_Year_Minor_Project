.class public final enum Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

.field public static final Companion:Lcom/bumptech/glide/load/Option$1;

.field public static final DEFAULT:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

.field public static final enum IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;


# instance fields
.field public final defaultName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 2
    .line 3
    const-string v1, "imap"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "IMAP"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->IMAP:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 12
    .line 13
    new-instance v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 14
    .line 15
    const-string v3, "pop3"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "POP3"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x2

    .line 24
    new-array v3, v3, [Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 25
    .line 26
    aput-object v0, v3, v2

    .line 27
    .line 28
    aput-object v1, v3, v4

    .line 29
    .line 30
    sput-object v3, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->$VALUES:[Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 31
    .line 32
    new-instance v1, Lkotlin/enums/EnumEntriesList;

    .line 33
    .line 34
    invoke-direct {v1, v3}, Lkotlin/enums/EnumEntriesList;-><init>([Ljava/lang/Enum;)V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    .line 38
    .line 39
    new-instance v1, Lcom/bumptech/glide/load/Option$1;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v1, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->Companion:Lcom/bumptech/glide/load/Option$1;

    .line 45
    .line 46
    sput-object v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->DEFAULT:Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 47
    .line 48
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->defaultName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;
    .locals 1

    .line 1
    const-class v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;
    .locals 1

    .line 1
    sget-object v0, Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;->$VALUES:[Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lapp/k9mail/feature/account/common/domain/entity/IncomingProtocolType;

    .line 8
    .line 9
    return-object v0
.end method
