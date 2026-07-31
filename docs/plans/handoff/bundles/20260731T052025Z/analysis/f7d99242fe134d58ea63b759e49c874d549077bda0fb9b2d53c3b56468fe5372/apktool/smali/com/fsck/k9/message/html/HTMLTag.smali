.class public final enum Lcom/fsck/k9/message/html/HTMLTag;
.super Ljava/lang/Enum;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final synthetic $VALUES:[Lcom/fsck/k9/message/html/HTMLTag;

.field public static final enum DIV:Lcom/fsck/k9/message/html/HTMLTag;

.field public static final enum SPAN:Lcom/fsck/k9/message/html/HTMLTag;


# instance fields
.field public final html:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/fsck/k9/message/html/HTMLTag;

    .line 2
    .line 3
    const-string v1, "div"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "DIV"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/fsck/k9/message/html/HTMLTag;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/fsck/k9/message/html/HTMLTag;->DIV:Lcom/fsck/k9/message/html/HTMLTag;

    .line 12
    .line 13
    new-instance v1, Lcom/fsck/k9/message/html/HTMLTag;

    .line 14
    .line 15
    const-string v3, "span"

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    const-string v5, "SPAN"

    .line 19
    .line 20
    invoke-direct {v1, v4, v5, v3}, Lcom/fsck/k9/message/html/HTMLTag;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/fsck/k9/message/html/HTMLTag;->SPAN:Lcom/fsck/k9/message/html/HTMLTag;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    new-array v3, v3, [Lcom/fsck/k9/message/html/HTMLTag;

    .line 27
    .line 28
    aput-object v0, v3, v2

    .line 29
    .line 30
    aput-object v1, v3, v4

    .line 31
    .line 32
    sput-object v3, Lcom/fsck/k9/message/html/HTMLTag;->$VALUES:[Lcom/fsck/k9/message/html/HTMLTag;

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/fsck/k9/message/html/HTMLTag;->html:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fsck/k9/message/html/HTMLTag;
    .locals 1

    .line 1
    const-class v0, Lcom/fsck/k9/message/html/HTMLTag;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/fsck/k9/message/html/HTMLTag;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/fsck/k9/message/html/HTMLTag;
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/message/html/HTMLTag;->$VALUES:[Lcom/fsck/k9/message/html/HTMLTag;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/fsck/k9/message/html/HTMLTag;

    .line 8
    .line 9
    return-object v0
.end method
