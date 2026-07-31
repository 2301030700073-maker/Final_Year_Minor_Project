.class public final synthetic Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap$SlotComputer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic f$1:Lorg/mozilla/javascript/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

.field public final synthetic f$4:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$1:Lorg/mozilla/javascript/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$4:Lorg/mozilla/javascript/ScriptableObject;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 8

    .line 1
    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

    .line 2
    .line 3
    iget-object v4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$4:Lorg/mozilla/javascript/ScriptableObject;

    .line 4
    .line 5
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$1:Lorg/mozilla/javascript/Context;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    move v6, p2

    .line 13
    move-object v7, p3

    .line 14
    invoke-static/range {v0 .. v7}, Lorg/mozilla/javascript/ScriptableObject;->$r8$lambda$I5MxH0KbROnp7WjngeA9RwsymmE(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaAccessorSlot;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method
