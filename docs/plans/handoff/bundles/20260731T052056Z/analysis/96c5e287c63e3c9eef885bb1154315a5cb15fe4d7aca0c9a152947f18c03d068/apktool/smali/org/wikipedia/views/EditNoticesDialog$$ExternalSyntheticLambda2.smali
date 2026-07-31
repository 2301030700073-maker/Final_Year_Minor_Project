.class public final synthetic Lorg/wikipedia/views/EditNoticesDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 5
    .line 6
    const p0, 0x7f1205d4

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p2}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
