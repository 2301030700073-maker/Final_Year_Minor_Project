.class public final Lcoil3/network/HttpException;
.super Ljava/lang/RuntimeException;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field private final response:Lcoil3/network/NetworkResponse;


# direct methods
.method public constructor <init>(Lcoil3/network/NetworkResponse;)V
    .locals 2

    .line 1
    iget v0, p1, Lcoil3/network/NetworkResponse;->code:I

    .line 2
    .line 3
    const-string v1, "HTTP "

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/ui/Modifier$-CC;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcoil3/network/HttpException;->response:Lcoil3/network/NetworkResponse;

    .line 13
    .line 14
    return-void
.end method
