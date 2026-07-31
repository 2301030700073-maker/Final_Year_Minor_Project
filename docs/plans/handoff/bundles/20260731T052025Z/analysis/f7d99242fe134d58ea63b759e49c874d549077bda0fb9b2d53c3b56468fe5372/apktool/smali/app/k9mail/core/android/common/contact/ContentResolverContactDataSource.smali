.class public final Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final contactPermissionResolver:Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

.field public final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "photo_uri"

    .line 2
    .line 3
    const-string v1, "lookup"

    .line 4
    .line 5
    const-string v2, "_id"

    .line 6
    .line 7
    const-string v3, "display_name"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->PROJECTION:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->contentResolver:Landroid/content/ContentResolver;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->contactPermissionResolver:Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCursorFor(Lnet/thunderbird/core/common/mail/EmailAddress;)Landroid/database/Cursor;
    .locals 7

    .line 1
    iget-object v0, p0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->contactPermissionResolver:Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;

    .line 2
    .line 3
    iget-object v0, v0, Lapp/k9mail/core/android/common/contact/AndroidContactPermissionResolver;->context:Landroid/content/Context;

    .line 4
    .line 5
    const-string v1, "android.permission.READ_CONTACTS"

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/tracing/TraceApi29Impl;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {p1}, Lnet/thunderbird/core/common/mail/EmailAddress;->getAddress()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v5, 0x0

    .line 28
    const-string v6, "display_name, _id"

    .line 29
    .line 30
    iget-object v1, p0, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->contentResolver:Landroid/content/ContentResolver;

    .line 31
    .line 32
    sget-object v3, Lapp/k9mail/core/android/common/contact/ContentResolverContactDataSource;->PROJECTION:[Ljava/lang/String;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    new-instance p0, Lapp/k9mail/core/android/common/database/EmptyCursor;

    .line 42
    .line 43
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-object p0

    .line 47
    :cond_1
    new-instance p0, Lapp/k9mail/core/android/common/database/EmptyCursor;

    .line 48
    .line 49
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 50
    .line 51
    .line 52
    return-object p0
.end method
