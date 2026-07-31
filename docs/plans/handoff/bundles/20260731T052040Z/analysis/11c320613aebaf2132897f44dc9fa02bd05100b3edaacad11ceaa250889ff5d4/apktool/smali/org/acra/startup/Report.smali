.class public final Lorg/acra/startup/Report;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public approve:Z

.field public final approved:Z

.field public delete:Z

.field public final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lorg/acra/startup/Report;->file:Ljava/io/File;

    .line 8
    .line 9
    iput-boolean p2, p0, Lorg/acra/startup/Report;->approved:Z

    .line 10
    .line 11
    return-void
.end method
