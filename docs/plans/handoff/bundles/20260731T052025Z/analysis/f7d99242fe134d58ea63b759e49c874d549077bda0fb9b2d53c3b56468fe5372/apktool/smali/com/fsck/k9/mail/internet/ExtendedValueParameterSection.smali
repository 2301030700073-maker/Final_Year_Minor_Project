.class public Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;
.super Lcom/fsck/k9/mail/internet/ParameterSection;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final data:Lokio/Buffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lokio/Buffer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/fsck/k9/mail/internet/ParameterSection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    .line 6
    .line 7
    iput-object p4, p0, Lcom/fsck/k9/mail/internet/ExtendedValueParameterSection;->data:Lokio/Buffer;

    .line 8
    .line 9
    return-void
.end method
