.class public final Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event;


# static fields
.field public static final INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;->INSTANCE:Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lnet/thunderbird/feature/mail/message/list/ui/dialog/SetupArchiveFolderDialogContract$Event$OnDoneClicked;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, -0x9ad6cb7

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "OnDoneClicked"

    .line 2
    .line 3
    return-object p0
.end method
