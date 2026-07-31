.class public final Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;
.super Lio/reactivex/rxjava3/android/MainThreadDisposable;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final observer:Lio/reactivex/rxjava3/core/Observer;

.field public final view:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Lio/reactivex/rxjava3/core/Observer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/android/MainThreadDisposable;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;->view:Landroid/widget/EditText;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;->observer:Lio/reactivex/rxjava3/core/Observer;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final onDispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;->view:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lio/reactivex/rxjava3/android/MainThreadDisposable;->unsubscribed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/jakewharton/rxbinding4/widget/TextViewTextChangesObservable$Listener;->observer:Lio/reactivex/rxjava3/core/Observer;

    .line 13
    .line 14
    invoke-interface {p0, p1}, Lio/reactivex/rxjava3/core/Observer;->onNext(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
