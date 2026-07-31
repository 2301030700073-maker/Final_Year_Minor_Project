.class public final Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;
.super Lapp/k9mail/feature/settings/import/ui/Action;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final accountUuid:Ljava/lang/String;

.field public final incomingServerName:Ljava/lang/String;

.field public final inputIncomingServerPassword:Z

.field public final inputOutgoingServerPassword:Z

.field public final outgoingServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->accountUuid:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p2, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->accountName:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p3, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->inputIncomingServerPassword:Z

    .line 12
    .line 13
    iput-object p4, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->incomingServerName:Ljava/lang/String;

    .line 14
    .line 15
    iput-boolean p5, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->inputOutgoingServerPassword:Z

    .line 16
    .line 17
    iput-object p6, p0, Lapp/k9mail/feature/settings/import/ui/Action$PasswordPrompt;->outgoingServerName:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method
