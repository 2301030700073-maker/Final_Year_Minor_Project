.class public final synthetic Lorg/wikipedia/feed/topread/TopRead$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/feed/topread/TopRead;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/feed/topread/TopRead;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/feed/topread/TopRead$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/feed/topread/TopRead$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/feed/topread/TopRead;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/feed/topread/TopRead$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopRead$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/feed/topread/TopRead;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopRead;->date:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

    .line 11
    .line 12
    invoke-static {p0, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Lj$/time/format/DateTimeParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    :goto_0
    return-object p0

    .line 22
    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lorg/wikipedia/feed/topread/TopRead;->date:Ljava/lang/String;

    .line 23
    .line 24
    sget-object v0, Lj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Lj$/time/format/DateTimeFormatter;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lj$/time/LocalDate;->parse(Ljava/lang/CharSequence;Lj$/time/format/DateTimeFormatter;)Lj$/time/LocalDate;

    .line 27
    .line 28
    .line 29
    move-result-object p0
    :try_end_1
    .catch Lj$/time/format/DateTimeParseException; {:try_start_1 .. :try_end_1} :catch_1

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    invoke-static {}, Lj$/time/LocalDate;->now()Lj$/time/LocalDate;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_1
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
