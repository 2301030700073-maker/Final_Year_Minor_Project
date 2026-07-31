.class public final synthetic Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget p0, p0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 6
    .line 7
    packed-switch p0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 11
    .line 12
    return-void

    .line 13
    :pswitch_0
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->formList:Z

    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_2
    iput-boolean v0, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_3
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->empty:Z

    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_4
    iput-boolean v0, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 26
    .line 27
    iput-boolean v0, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_5
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 31
    .line 32
    iput-boolean v1, p1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    .line 1
    iget v0, p0, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
