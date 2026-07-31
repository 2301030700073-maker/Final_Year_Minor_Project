.class public final synthetic Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$1:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic f$2:Lorg/mozilla/javascript/Function;

.field public final synthetic f$3:[Ljava/lang/Object;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Scriptable;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Function;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/Object;

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$4:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v3, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$3:[Ljava/lang/Object;

    .line 2
    .line 3
    iget-wide v4, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$4:J

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/Scriptable;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$1:Lorg/mozilla/javascript/Scriptable;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/mozilla/javascript/JavaAdapter$$ExternalSyntheticLambda0;->f$2:Lorg/mozilla/javascript/Function;

    .line 10
    .line 11
    move-object v6, p1

    .line 12
    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->$r8$lambda$MitkA_IZxOuZKYsK4iuWXUehL3g(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
