.class public final enum Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

.field public static final enum SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;


# instance fields
.field public final codeClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 2
    .line 3
    const-string v1, "SUCCESS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->SUCCESS:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 11
    .line 12
    new-instance v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 13
    .line 14
    const/4 v4, 0x4

    .line 15
    const-string v5, "PERSISTENT_TRANSIENT_FAILURE"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    invoke-direct {v1, v5, v6, v4}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERSISTENT_TRANSIENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 22
    .line 23
    new-instance v4, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 24
    .line 25
    const-string v5, "PERMANENT_FAILURE"

    .line 26
    .line 27
    const/4 v7, 0x5

    .line 28
    invoke-direct {v4, v5, v3, v7}, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v4, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->PERMANENT_FAILURE:Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 32
    .line 33
    const/4 v5, 0x3

    .line 34
    new-array v5, v5, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 35
    .line 36
    aput-object v0, v5, v2

    .line 37
    .line 38
    aput-object v1, v5, v6

    .line 39
    .line 40
    aput-object v4, v5, v3

    .line 41
    .line 42
    sput-object v5, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->codeClass:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;->$VALUES:[Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/mail/transport/smtp/StatusCodeClass;

    .line 8
    .line 9
    return-object v0
.end method
