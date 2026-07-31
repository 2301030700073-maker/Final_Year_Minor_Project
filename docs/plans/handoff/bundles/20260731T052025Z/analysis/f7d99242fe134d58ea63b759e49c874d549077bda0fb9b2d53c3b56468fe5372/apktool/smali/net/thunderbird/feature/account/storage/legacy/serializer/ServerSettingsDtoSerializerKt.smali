.class public abstract Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializerKt;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final JSON_KEYS:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "password"

    .line 2
    .line 3
    const-string v7, "clientCertificateAlias"

    .line 4
    .line 5
    const-string v0, "type"

    .line 6
    .line 7
    const-string v1, "host"

    .line 8
    .line 9
    const-string v2, "port"

    .line 10
    .line 11
    const-string v3, "connectionSecurity"

    .line 12
    .line 13
    const-string v4, "authenticationType"

    .line 14
    .line 15
    const-string/jumbo v5, "username"

    .line 16
    .line 17
    .line 18
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/google/zxing/BinaryBitmap;->of([Ljava/lang/String;)Lcom/google/zxing/BinaryBitmap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializerKt;->JSON_KEYS:Lcom/google/zxing/BinaryBitmap;

    .line 27
    .line 28
    return-void
.end method
