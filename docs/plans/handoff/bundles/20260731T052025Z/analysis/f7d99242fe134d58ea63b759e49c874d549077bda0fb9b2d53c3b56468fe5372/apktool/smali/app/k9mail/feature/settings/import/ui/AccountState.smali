.class public final Lapp/k9mail/feature/settings/import/ui/AccountState;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final incomingServerName:Ljava/lang/String;

.field public final incomingServerPasswordNeeded:Z

.field public final outgoingServerName:Ljava/lang/String;

.field public final outgoingServerPasswordNeeded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerName:Ljava/lang/String;

    .line 7
    .line 8
    iput-boolean p3, p0, Lapp/k9mail/feature/settings/import/ui/AccountState;->incomingServerPasswordNeeded:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lapp/k9mail/feature/settings/import/ui/AccountState;->outgoingServerPasswordNeeded:Z

    .line 11
    .line 12
    return-void
.end method
