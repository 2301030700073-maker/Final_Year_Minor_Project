.class public final synthetic Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap$SlotComputer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic f$1:Z

.field public final synthetic f$10:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic f$4:Ljava/lang/Object;

.field public final synthetic f$5:Ljava/lang/Object;

.field public final synthetic f$6:Ljava/lang/Object;

.field public final synthetic f$7:Z

.field public final synthetic f$8:Ljava/lang/Object;

.field public final synthetic f$9:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    .line 5
    .line 6
    iput-boolean p2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$3:Lorg/mozilla/javascript/ScriptableObject;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    .line 17
    .line 18
    iput-boolean p8, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$7:Z

    .line 19
    .line 20
    iput-object p9, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$8:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$9:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$10:Ljava/lang/Object;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 14

    .line 1
    iget-object v9, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$9:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v10, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$10:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    .line 6
    .line 7
    iget-boolean v1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$1:Z

    .line 8
    .line 9
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$3:Lorg/mozilla/javascript/ScriptableObject;

    .line 12
    .line 13
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$4:Ljava/lang/Object;

    .line 14
    .line 15
    iget-object v5, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$5:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object v6, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$6:Ljava/lang/Object;

    .line 18
    .line 19
    iget-boolean v7, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$7:Z

    .line 20
    .line 21
    iget-object v8, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda0;->f$8:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v11, p1

    .line 24
    move/from16 v12, p2

    .line 25
    .line 26
    move-object/from16 v13, p3

    .line 27
    .line 28
    invoke-static/range {v0 .. v13}, Lorg/mozilla/javascript/ScriptableObject;->$r8$lambda$EN5WN7bTE4DxnpwAMK2kPg0FzKc(Lorg/mozilla/javascript/ScriptableObject;ZLjava/lang/Object;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method
