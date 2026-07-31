.class public final Lnet/thunderbird/core/file/AndroidMimeTypeResolver;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final mimeTypeProvider:Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;


# direct methods
.method public constructor <init>(Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;->mimeTypeProvider:Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getMimeType(Lcom/eygraber/uri/Uri;)Lnet/thunderbird/core/file/MimeType;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lnet/thunderbird/core/file/AndroidMimeTypeResolver;->mimeTypeProvider:Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;

    .line 5
    .line 6
    iget-object p0, p0, Lnet/thunderbird/app/common/core/AppCommonCoreModuleKt$$ExternalSyntheticLambda7;->f$0:Landroid/content/ContentResolver;

    .line 7
    .line 8
    invoke-static {p1}, Lorg/slf4j/helpers/Util;->toAndroidUri(Lcom/eygraber/uri/Uri;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_6

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const v0, -0x58a7d764    # -2.9998036E-15f

    .line 23
    .line 24
    .line 25
    if-eq p1, v0, :cond_4

    .line 26
    .line 27
    const v0, -0x4a68144d

    .line 28
    .line 29
    .line 30
    if-eq p1, v0, :cond_2

    .line 31
    .line 32
    const v0, -0x34686c8b    # -1.986737E7f

    .line 33
    .line 34
    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "image/png"

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p0

    .line 44
    if-nez p0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lnet/thunderbird/core/file/MimeType;->PNG:Lnet/thunderbird/core/file/MimeType;

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_2
    const-string p1, "application/pdf"

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    sget-object p0, Lnet/thunderbird/core/file/MimeType;->PDF:Lnet/thunderbird/core/file/MimeType;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_4
    const-string p1, "image/jpeg"

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    if-nez p0, :cond_5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_5
    sget-object p0, Lnet/thunderbird/core/file/MimeType;->JPEG:Lnet/thunderbird/core/file/MimeType;

    .line 72
    .line 73
    return-object p0

    .line 74
    :cond_6
    :goto_0
    const/4 p0, 0x0

    .line 75
    return-object p0
.end method
