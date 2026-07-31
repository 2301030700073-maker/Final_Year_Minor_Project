.class public final Lapp/k9mail/feature/settings/import/ui/SavedAccountState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lapp/k9mail/feature/settings/import/ui/SavedAccountState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final accountIndex:I

.field public final accountUuid:Ljava/lang/String;

.field public final displayName:Ljava/lang/String;

.field public final importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

.field public final incomingServerName:Ljava/lang/String;

.field public final incomingServerPasswordNeeded:Z

.field public final outgoingServerName:Ljava/lang/String;

.field public final outgoingServerPasswordNeeded:Z

.field public final selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLapp/k9mail/feature/settings/import/ui/ImportStatus;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountIndex:I

    .line 14
    .line 15
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->displayName:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountUuid:Ljava/lang/String;

    .line 18
    .line 19
    iput-boolean p4, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->selected:Z

    .line 20
    .line 21
    iput-object p5, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 22
    .line 23
    iput-object p6, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerName:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p7, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerName:Ljava/lang/String;

    .line 26
    .line 27
    iput-boolean p8, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerPasswordNeeded:Z

    .line 28
    .line 29
    iput-boolean p9, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerPasswordNeeded:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountIndex:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->displayName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->accountUuid:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->selected:Z

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->importStatus:Lapp/k9mail/feature/settings/import/ui/ImportStatus;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerName:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-boolean p2, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->incomingServerPasswordNeeded:Z

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    iget-boolean p0, p0, Lapp/k9mail/feature/settings/import/ui/SavedAccountState;->outgoingServerPasswordNeeded:Z

    .line 49
    .line 50
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
