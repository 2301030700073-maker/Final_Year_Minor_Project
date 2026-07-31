.class public final synthetic Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:J

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->f$0:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->f$1:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    iget-wide v3, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->f$1:J

    .line 6
    .line 7
    iget-wide v5, p0, Lcom/fsck/k9/preferences/K9StorageEditor$$ExternalSyntheticLambda3;->f$0:J

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sub-long/2addr v5, v3

    .line 13
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-array v0, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    aput-object p0, v0, v1

    .line 20
    .line 21
    const-string p0, "Preferences load took %d ms"

    .line 22
    .line 23
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    sub-long/2addr v5, v3

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object p0, v0, v1

    .line 36
    .line 37
    const-string p0, "Preferences commit took %d ms"

    .line 38
    .line 39
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    return-object p0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
