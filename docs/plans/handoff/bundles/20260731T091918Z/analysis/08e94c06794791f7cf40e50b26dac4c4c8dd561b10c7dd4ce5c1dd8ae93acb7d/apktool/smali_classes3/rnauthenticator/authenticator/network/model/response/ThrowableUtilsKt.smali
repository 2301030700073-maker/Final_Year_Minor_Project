.class public final Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;
.super Ljava/lang/Object;
.source "ThrowableUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0002\u001a\u000c\u0010\u0003\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0005\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0007\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0008\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\t\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\n\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u000b\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u000c\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\'\u0010\r\u001a\u0002H\u000e\"\u0004\u0008\u0000\u0010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u0002H\u000eH\u0002\u00a2\u0006\u0002\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "toError",
        "Lrnauthenticator/authenticator/network/model/response/AuthError;",
        "",
        "toRegistrationError",
        "toAuthError",
        "toResetPasswordError",
        "toUpdatePasswordError",
        "toEmailVerificationError",
        "toTokenVerificationError",
        "toUserExistError",
        "toDeleteAccountError",
        "toGenerateOTPError",
        "toSetPasswordError",
        "getWithDefault",
        "T",
        "Lorg/json/JSONObject;",
        "key",
        "",
        "defaultValue",
        "(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;",
        "propertyguru_react-native-authenticator_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private static final getWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 206
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p2
.end method

.method public static final toAuthError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 5

    const-string v0, "ERR_UNKNOWN"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 38
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v3, "error"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lorg/json/JSONObject;

    .line 40
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 41
    const-string v4, "message"

    invoke-static {v2, v4, v1}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->getWithDefault(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 42
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "toLowerCase(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "maxfailedattempterror"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    const-string v3, "ERR_MAX_FAILED_ATTEMPT"

    goto :goto_1

    .line 42
    :sswitch_1
    const-string v4, "invalid_grant"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    const-string v3, "ERR_INVALID_GRANT"

    goto :goto_1

    .line 42
    :sswitch_2
    const-string v4, "users_migration_reset_password_error"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 45
    :cond_4
    const-string v3, "ERR_MIGRATED_USER"

    goto :goto_1

    .line 42
    :sswitch_3
    const-string v4, "invalid_user_credential"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 43
    const-string v3, "ERR_INVALID_CREDENTIAL"

    goto :goto_1

    .line 42
    :sswitch_4
    const-string v4, "invalidotpcredentialerror"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 47
    :cond_5
    const-string v3, "ERR_INVALID_OTP"

    goto :goto_1

    :cond_6
    :goto_0
    move-object v3, v0

    .line 50
    :goto_1
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v3, v2}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_3

    .line 52
    :catch_0
    new-instance v2, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v1, p0

    :goto_2
    invoke-direct {v2, v0, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a53c043 -> :sswitch_4
        -0x6f52f0fd -> :sswitch_3
        -0x658392c4 -> :sswitch_2
        -0x32887f2c -> :sswitch_1
        -0x21959384 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final toDeleteAccountError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 6

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "ERR_UNKNOWN"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 157
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v4, "errorCode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 159
    const-string v5, "errorMessage"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 162
    const-string v0, "USER_NOT_FOUND"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ERR_USER_NOT_FOUND"

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 165
    :goto_0
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v0, v3}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_2

    .line 167
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-direct {v0, v2, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_2
    return-object v3
.end method

.method public static final toEmailVerificationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 5

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 101
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 103
    const-string v4, "errorMessage"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 104
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v0, v3, v2}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string p0, "ERR_UNKNOWN"

    invoke-direct {v0, p0, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method private static final toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 2

    .line 7
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v1, "ERR_NO_NETWORK"

    invoke-direct {v0, v1, p0}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toGenerateOTPError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 5

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 177
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 179
    const-string v4, "error"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 181
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v0, v3, v2}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 183
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string p0, "ERR_UNKNOWN"

    invoke-direct {v0, p0, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public static final toRegistrationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 8

    const-string v0, ""

    const-string v1, "ERR_UNKNOWN"

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v0

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 20
    const-string v4, "pendingConfirm"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    const-string v2, "ERR_PENDING_CONFIRMATION"

    goto :goto_0

    .line 23
    :cond_2
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    const-string v4, "has been registered"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v4, v7, v5, v6}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ERR_EMAIL_REGISTERED"

    goto :goto_0

    :cond_3
    move-object v2, v1

    .line 26
    :goto_0
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v2, v3}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_2

    .line 28
    :catch_0
    new-instance v2, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    invoke-direct {v2, v1, v0}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public static final toResetPasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 6

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "ERR_UNKNOWN"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 62
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 64
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 66
    const-string v0, "USER_NOT_FOUND"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ERR_USER_NOT_FOUND"

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 69
    :goto_0
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v0, v3}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_2

    .line 71
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-direct {v0, v2, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_2
    return-object v3
.end method

.method public static final toSetPasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 5

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v3, "errorCode"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 195
    const-string v4, "message"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 197
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v0, v3, v2}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 199
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    const-string p0, "ERR_UNKNOWN"

    invoke-direct {v0, p0, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v2, v0

    :goto_2
    return-object v2
.end method

.method public static final toTokenVerificationError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 6

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "ERR_UNKNOWN"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 116
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 118
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 120
    const-string v0, "INVALID_TOKEN"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ERR_INVALID_TOKEN"

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "USED_TOKEN"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ERR_USED_TOKEN"

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 124
    :goto_0
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v0, v3}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_2

    .line 126
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-direct {v0, v2, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_2
    return-object v3
.end method

.method public static final toUpdatePasswordError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 6

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    const-string v1, ""

    const-string v2, "ERR_UNKNOWN"

    const-string v3, "<this>"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 81
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 83
    const-string v5, "message"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    .line 85
    const-string v0, "INVALID_TOKEN"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ERR_INVALID_TOKEN"

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "TOKEN_EXPIRED"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ERR_EXPIRED_TOKEN"

    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 89
    :goto_0
    new-instance v4, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v4, v0, v3}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_2

    .line 91
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-direct {v0, v2, v1}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_2
    return-object v3
.end method

.method public static final toUserExistError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;
    .locals 7

    const-string v0, "ERR_USER_GET_LOCKE_ID"

    const-string v1, "null cannot be cast to non-null type kotlin.String"

    const-string v2, ""

    const-string v3, "ERR_UNKNOWN"

    const-string v4, "<this>"

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {p0}, Lrnauthenticator/authenticator/network/model/response/ThrowableUtilsKt;->toError(Ljava/lang/Throwable;)Lrnauthenticator/authenticator/network/model/response/AuthError;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_2

    .line 136
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v2

    :cond_1
    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    const-string v5, "errorCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 138
    const-string v6, "errorMessage"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    .line 141
    const-string v1, "USER_NOT_FOUND"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "ERR_USER_NOT_FOUND"

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v0, v3

    .line 145
    :goto_0
    new-instance v1, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-direct {v1, v0, v4}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_2

    .line 147
    :catch_0
    new-instance v0, Lrnauthenticator/authenticator/network/model/response/AuthError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, p0

    :goto_1
    invoke-direct {v0, v3, v2}, Lrnauthenticator/authenticator/network/model/response/AuthError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    :goto_2
    return-object v4
.end method
