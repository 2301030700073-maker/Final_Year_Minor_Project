.class public final Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 5
    .line 6
    const/16 v1, 0x9

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/squareup/moshi/StandardJsonAdapters$2;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final deserialize(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/account/storage/legacy/serializer/ServerSettingsDtoSerializer;->adapter:Lcom/squareup/moshi/StandardJsonAdapters$2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/fsck/k9/mail/ServerSettings;

    .line 11
    .line 12
    return-object p0
.end method
