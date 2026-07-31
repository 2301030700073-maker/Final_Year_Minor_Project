.class public abstract Lorg/apache/james/mime4j/field/address/SimpleNode;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

.field public firstToken:Lorg/apache/james/mime4j/field/address/Token;

.field public final id:I

.field public lastToken:Lorg/apache/james/mime4j/field/address/Token;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->id:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final jjtGetNumChildren()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    array-length p0, p0

    .line 8
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    .line 2
    .line 3
    iget p0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->id:I

    .line 4
    .line 5
    aget-object p0, v0, p0

    .line 6
    .line 7
    return-object p0
.end method
