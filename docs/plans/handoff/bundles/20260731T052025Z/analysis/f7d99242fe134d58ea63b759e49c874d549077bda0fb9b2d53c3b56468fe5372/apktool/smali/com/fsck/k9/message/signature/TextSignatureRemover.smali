.class public abstract Lcom/fsck/k9/message/signature/TextSignatureRemover;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final DASH_SIGNATURE_PLAIN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\r\n-- \r\n.*"

    .line 2
    .line 3
    const/16 v1, 0x20

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/fsck/k9/message/signature/TextSignatureRemover;->DASH_SIGNATURE_PLAIN:Ljava/util/regex/Pattern;

    .line 10
    .line 11
    return-void
.end method
