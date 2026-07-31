.class public final Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final contactNameColor:Ljava/lang/Integer;

.field public final contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

.field public final meText:Ljava/lang/String;

.field public final showContactNames:Z


# direct methods
.method public constructor <init>(Lcom/fsck/k9/helper/RealContactNameProvider;ZLjava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->contactNameProvider:Lcom/fsck/k9/helper/RealContactNameProvider;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->showContactNames:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->contactNameColor:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/fsck/k9/ui/messagedetails/RealMessageDetailsParticipantFormatter;->meText:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method
