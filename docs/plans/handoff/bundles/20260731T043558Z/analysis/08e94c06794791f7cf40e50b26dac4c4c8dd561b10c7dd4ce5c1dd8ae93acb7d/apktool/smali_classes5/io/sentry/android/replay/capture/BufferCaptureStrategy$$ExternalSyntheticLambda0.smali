.class public final synthetic Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/util/Date;

.field public final synthetic f$3:Lio/sentry/protocol/SentryId;

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:I

.field public final synthetic f$7:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    iput-wide p2, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$1:J

    iput-object p4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/util/Date;

    iput-object p5, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$3:Lio/sentry/protocol/SentryId;

    iput p6, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$4:I

    iput p7, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$5:I

    iput p8, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$6:I

    iput-object p9, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 0
    iget-object v0, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/replay/capture/BufferCaptureStrategy;

    iget-wide v1, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$1:J

    iget-object v3, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$2:Ljava/util/Date;

    iget-object v4, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$3:Lio/sentry/protocol/SentryId;

    iget v5, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$4:I

    iget v6, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$5:I

    iget v7, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$6:I

    iget-object v8, p0, Lio/sentry/android/replay/capture/BufferCaptureStrategy$$ExternalSyntheticLambda0;->f$7:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, Lio/sentry/android/replay/capture/BufferCaptureStrategy;->$r8$lambda$SSueHOGGZ8DByXAmWCGhrr_QYpc(Lio/sentry/android/replay/capture/BufferCaptureStrategy;JLjava/util/Date;Lio/sentry/protocol/SentryId;IIILkotlin/jvm/functions/Function1;)V

    return-void
.end method
