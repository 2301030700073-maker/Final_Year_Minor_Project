.class public final Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;
.super Landroidx/work/OperationKt;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic $block:Ljava/lang/Object;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$block:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    iget p1, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$block:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lorg/wikipedia/games/onthisday/OnThisDayGameArchiveCalendarHelper;

    .line 10
    .line 11
    instance-of p1, p2, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    check-cast p2, Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "calendar"

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-static {p1}, Lorg/wikipedia/util/log/L;->e(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :goto_0
    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendar;

    .line 42
    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    new-instance p2, Lcom/google/android/material/datepicker/MaterialDatePicker$2;

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-direct {p2, v0, p0}, Lcom/google/android/material/datepicker/MaterialDatePicker$2;-><init>(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendar;->addOnSelectionChangedListener(Lcom/google/android/material/datepicker/MaterialDatePicker$2;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1
    iget p1, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lleakcanary/internal/FragmentExtensionsKt$onAndroidXFragmentViewDestroyed$1;->$block:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;

    .line 10
    .line 11
    invoke-virtual {p0}, Lleakcanary/AndroidLeakFixes$Companion$onDecorViewReady$1;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
