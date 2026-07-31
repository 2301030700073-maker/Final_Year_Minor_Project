.class public final Lnet/thunderbird/feature/search/legacy/SearchAccount;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/account/api/BaseAccount;


# instance fields
.field public final email:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;


# direct methods
.method public constructor <init>(Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->email:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->relatedSearch:Lnet/thunderbird/feature/search/legacy/LocalMessageSearch;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->email:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/thunderbird/feature/search/legacy/SearchAccount;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getUuid()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "unified_folders"

    .line 2
    .line 3
    return-object p0
.end method
