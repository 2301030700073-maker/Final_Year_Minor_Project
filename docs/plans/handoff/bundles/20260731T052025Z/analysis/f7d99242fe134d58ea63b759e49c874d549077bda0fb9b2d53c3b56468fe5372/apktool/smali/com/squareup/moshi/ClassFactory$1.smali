.class public final Lcom/squareup/moshi/ClassFactory$1;
.super Lcom/squareup/moshi/Types;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$constructor:Ljava/lang/reflect/AccessibleObject;

.field public final synthetic val$rawType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/squareup/moshi/ClassFactory$1;->$r8$classId:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/squareup/moshi/ClassFactory$1;->val$constructor:Ljava/lang/reflect/AccessibleObject;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/squareup/moshi/ClassFactory$1;->val$rawType:Ljava/lang/Class;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/ClassFactory$1;->$r8$classId:I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/squareup/moshi/ClassFactory$1;->val$constructor:Ljava/lang/reflect/AccessibleObject;

    iput-object p2, p0, Lcom/squareup/moshi/ClassFactory$1;->val$rawType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final newInstance()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/moshi/ClassFactory$1;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/squareup/moshi/ClassFactory$1;->val$constructor:Ljava/lang/reflect/AccessibleObject;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    check-cast v2, Ljava/lang/reflect/Method;

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    iget-object p0, p0, Lcom/squareup/moshi/ClassFactory$1;->val$rawType:Ljava/lang/Class;

    .line 16
    .line 17
    aput-object p0, v0, v3

    .line 18
    .line 19
    const-class p0, Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aput-object p0, v0, v3

    .line 23
    .line 24
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :pswitch_0
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/squareup/moshi/ClassFactory$1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/squareup/moshi/ClassFactory$1;->val$rawType:Ljava/lang/Class;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    nop

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
