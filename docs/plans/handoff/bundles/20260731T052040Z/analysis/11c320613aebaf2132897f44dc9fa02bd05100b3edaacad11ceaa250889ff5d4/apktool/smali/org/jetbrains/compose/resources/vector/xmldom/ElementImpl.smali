.class public final Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;
.super Lokhttp3/ConnectionPool;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/jetbrains/compose/resources/vector/xmldom/Element;


# instance fields
.field public final element:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lokhttp3/ConnectionPool;-><init>(Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lorg/jetbrains/compose/resources/vector/xmldom/ElementImpl;->element:Lorg/w3c/dom/Element;

    .line 7
    .line 8
    return-void
.end method
