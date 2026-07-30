.class public final Lcom/android/contacts/compat/CompatUtils;
.super Ljava/lang/Object;
.source "CompatUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompatUtils"

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPrioritizedMimeType()Z
    .locals 2

    const/16 v0, 0x17

    .line 86
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "#"

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 255
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 261
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 262
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 270
    sget-object p2, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception when invoking method: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at runtime"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_0
    nop

    .line 265
    sget-object p0, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-static {p0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 266
    sget-object p0, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Could not invoke method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static isAssertQueryCompat(Lcom/android/contacts/model/CPOWrapper;)Z
    .locals 2

    const/16 v0, 0x17

    .line 76
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->isAssertQuery()Z

    move-result p0

    return p0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCallSubjectCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 130
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 5

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 199
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    .line 204
    sget-object v2, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception when checking if class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists at runtime"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_0
    return v1
.end method

.method public static isDefaultDialerCompatible()Z
    .locals 1

    .line 141
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v0

    return v0
.end method

.method public static isDeleteCompat(Lcom/android/contacts/model/CPOWrapper;)Z
    .locals 2

    const/16 v0, 0x17

    .line 67
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->isDelete()Z

    move-result p0

    return p0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getType()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInsertCompat(Lcom/android/contacts/model/CPOWrapper;)Z
    .locals 2

    const/16 v0, 0x17

    .line 47
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->isInsert()Z

    move-result p0

    return p0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLauncherShortcutCompatible()Z
    .locals 1

    .line 183
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNougatMr1Compatible()Z

    move-result v0

    return v0
.end method

.method public static isLollipopCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 283
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLollipopMr1Compatible()Z
    .locals 2

    const/16 v0, 0x16

    .line 151
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMSIMCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 97
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMarshmallowCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 162
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isMethodAvailable(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "#"

    .line 222
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p2

    .line 235
    sget-object v1, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected exception when checking if method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exists at runtime"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catch_0
    nop

    .line 230
    sget-object p2, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 231
    sget-object p2, Lcom/android/contacts/compat/CompatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find method: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v2
.end method

.method public static isNCompatible()Z
    .locals 2

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNougatMr1Compatible()Z
    .locals 2

    const/16 v0, 0x19

    .line 178
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUpdateCompat(Lcom/android/contacts/model/CPOWrapper;)Z
    .locals 2

    const/16 v0, 0x17

    .line 57
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getOperation()Landroid/content/ContentProviderOperation;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->isUpdate()Z

    move-result p0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/CPOWrapper;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isVideoCompatible()Z
    .locals 2

    const/16 v0, 0x15

    .line 108
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPresenceCompatible()Z
    .locals 2

    const/16 v0, 0x17

    .line 119
    invoke-static {v0}, Lcom/android/contacts/compat/SdkVersionOverride;->getSdkVersion(I)I

    move-result v1

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
