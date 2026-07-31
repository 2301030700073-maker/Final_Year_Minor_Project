.class public final Lapp/k9mail/core/android/common/contact/CachingContactRepository;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lapp/k9mail/core/android/common/contact/ContactRepository;


# instance fields
.field public final cache:Lnet/thunderbird/core/common/cache/Cache;

.field public final dataSource:Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;


# direct methods
.method public constructor <init>(Lnet/thunderbird/core/common/cache/Cache;Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->cache:Lnet/thunderbird/core/common/cache/Cache;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->dataSource:Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;
    .locals 10

    .line 1
    iget-object v0, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->cache:Lnet/thunderbird/core/common/cache/Cache;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lnet/thunderbird/core/common/cache/Cache;->hasKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lnet/thunderbird/core/common/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lapp/k9mail/core/android/common/contact/Contact;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    iget-object p0, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->dataSource:Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->getCursorFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Landroid/database/Cursor;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const-string v1, "_id"

    .line 30
    .line 31
    invoke-static {p0, v1}, Lorg/slf4j/helpers/Util;->getLongOrThrow(Landroid/database/Cursor;Ljava/lang/String;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v4

    .line 35
    const-string v1, "lookup"

    .line 36
    .line 37
    invoke-static {p0, v1}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v4, v5, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v1, "display_name"

    .line 46
    .line 47
    invoke-static {p0, v1}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v1, "photo_uri"

    .line 52
    .line 53
    invoke-static {p0, v1}, Lorg/slf4j/helpers/Util;->getStringOrNull(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    :cond_1
    move-object v9, v2

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    move-object p1, v0

    .line 67
    goto :goto_2

    .line 68
    :goto_0
    new-instance v3, Lapp/k9mail/core/android/common/contact/Contact;

    .line 69
    .line 70
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-object v7, p1

    .line 74
    invoke-direct/range {v3 .. v9}, Lapp/k9mail/core/android/common/contact/Contact;-><init>(JLjava/lang/String;Lnet/thunderbird/core/common/mail/EmailAddress;Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 78
    .line 79
    .line 80
    move-object v2, v3

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    move-object v7, p1

    .line 83
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 84
    .line 85
    .line 86
    :goto_1
    invoke-interface {v0, v7, v2}, Lnet/thunderbird/core/common/cache/Cache;->set(Lnet/thunderbird/core/common/mail/EmailAddress;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    return-object v2

    .line 90
    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public final getPhotoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lnet/thunderbird/core/common/mail/TokensKt;->toEmailAddressOrNull(Ljava/lang/String;)Lnet/thunderbird/core/common/mail/EmailAddress;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->getContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Lapp/k9mail/core/android/common/contact/Contact;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    iget-object p0, p0, Lapp/k9mail/core/android/common/contact/Contact;->photoUri:Landroid/net/Uri;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_0
    return-object v0
.end method

.method public final hasContactFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->cache:Lnet/thunderbird/core/common/cache/Cache;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lnet/thunderbird/core/common/cache/Cache;->hasKey(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p1}, Lnet/thunderbird/core/common/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    return v3

    .line 21
    :cond_0
    return v2

    .line 22
    :cond_1
    iget-object p0, p0, Lapp/k9mail/core/android/common/contact/CachingContactRepository;->dataSource:Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->getCursorFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 29
    .line 30
    .line 31
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-lez p1, :cond_2

    .line 33
    .line 34
    move v2, v3

    .line 35
    :cond_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    invoke-static {p0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
