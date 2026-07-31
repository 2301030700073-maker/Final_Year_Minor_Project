.class public final synthetic Lexpo/modules/video/IntervalUpdateClock$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lexpo/modules/video/IntervalUpdateClock;


# direct methods
.method public synthetic constructor <init>(Lexpo/modules/video/IntervalUpdateClock;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/video/IntervalUpdateClock$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/IntervalUpdateClock;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lexpo/modules/video/IntervalUpdateClock$$ExternalSyntheticLambda0;->f$0:Lexpo/modules/video/IntervalUpdateClock;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p2}, Lexpo/modules/video/IntervalUpdateClock;->$r8$lambda$clSVWI_XW1cfpN4mfcbCH6rJCuo(Lexpo/modules/video/IntervalUpdateClock;JLjava/lang/Long;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
