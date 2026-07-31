.class public abstract Lcom/fsck/k9/helper/ListHeaders;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "<(mailto:.+)>"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fsck/k9/helper/ListHeaders;->MAILTO_CONTAINER_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method
