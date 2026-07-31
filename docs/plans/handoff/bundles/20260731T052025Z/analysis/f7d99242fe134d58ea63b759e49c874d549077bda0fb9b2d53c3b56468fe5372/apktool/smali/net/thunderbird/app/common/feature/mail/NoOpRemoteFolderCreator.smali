.class public final Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/backend/api/folder/RemoteFolderCreator;


# static fields
.field public static final INSTANCE:Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;->INSTANCE:Lnet/thunderbird/app/common/feature/mail/NoOpRemoteFolderCreator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final create-rwpFgxY(Ljava/lang/String;Lorg/jetbrains/compose/resources/AsyncCache$getOrLoad$2;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lnet/thunderbird/core/outcome/Outcome$Success;

    .line 2
    .line 3
    sget-object p1, Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$AlreadyExists;->INSTANCE:Lnet/thunderbird/backend/api/folder/RemoteFolderCreationOutcome$Success$AlreadyExists;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lnet/thunderbird/core/outcome/Outcome$Success;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method
