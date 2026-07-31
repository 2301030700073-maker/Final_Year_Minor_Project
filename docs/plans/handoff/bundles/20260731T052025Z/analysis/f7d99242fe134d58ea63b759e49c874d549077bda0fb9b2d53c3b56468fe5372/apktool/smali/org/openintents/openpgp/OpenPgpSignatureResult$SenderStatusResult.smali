.class public final enum Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openintents/openpgp/OpenPgpSignatureResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SenderStatusResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final enum UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

.field public static final VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 2
    .line 3
    const-string v1, "UNKNOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->UNKNOWN:Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 10
    .line 11
    new-instance v1, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 12
    .line 13
    const-string v3, "USER_ID_CONFIRMED"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 20
    .line 21
    const-string v5, "USER_ID_UNCONFIRMED"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 28
    .line 29
    const-string v7, "USER_ID_MISSING"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    new-array v7, v7, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 37
    .line 38
    aput-object v0, v7, v2

    .line 39
    .line 40
    aput-object v1, v7, v4

    .line 41
    .line 42
    aput-object v3, v7, v6

    .line 43
    .line 44
    aput-object v5, v7, v8

    .line 45
    .line 46
    sput-object v7, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 47
    .line 48
    invoke-static {}, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 53
    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 1

    .line 1
    const-class v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;
    .locals 1

    .line 1
    sget-object v0, Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->$VALUES:[Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/openintents/openpgp/OpenPgpSignatureResult$SenderStatusResult;

    .line 8
    .line 9
    return-object v0
.end method
