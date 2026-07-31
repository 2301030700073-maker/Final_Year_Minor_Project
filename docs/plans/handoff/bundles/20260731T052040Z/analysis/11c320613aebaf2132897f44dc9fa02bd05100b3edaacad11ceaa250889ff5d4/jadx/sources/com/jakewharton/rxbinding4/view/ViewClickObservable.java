package com.jakewharton.rxbinding4.view;

import android.os.Looper;
import android.view.View;
import android.widget.EditText;
import androidx.compose.ui.Modifier;
import com.jakewharton.rxbinding4.widget.TextViewTextChangesObservable$Listener;
import io.reactivex.rxjava3.android.MainThreadDisposable;
import io.reactivex.rxjava3.core.Flowable;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.RunnableDisposable;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate$CreateEmitter;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromArray$FromArrayDisposable;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFromPublisher$PublisherSubscriber;
import io.reactivex.rxjava3.internal.operators.single.SingleAmb;
import io.reactivex.rxjava3.internal.operators.single.SingleToObservable$SingleToObservableObserver;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.rx3.RxConvertKt$$ExternalSyntheticLambda0;
import net.newpipe.app.AppKt;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class ViewClickObservable extends Observable {
    public final /* synthetic */ int $r8$classId;
    public final Object view;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public final class Listener extends MainThreadDisposable implements View.OnClickListener {
        public final Observer observer;
        public final View view;

        public Listener(View view, Observer observer) {
            this.view = view;
            this.observer = observer;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            view.getClass();
            if (this.unsubscribed.get()) {
                return;
            }
            this.observer.onNext(Unit.INSTANCE);
        }

        @Override // io.reactivex.rxjava3.android.MainThreadDisposable
        public final void onDispose() {
            this.view.setOnClickListener(null);
        }
    }

    public /* synthetic */ ViewClickObservable(Object obj, int i) {
        this.$r8$classId = i;
        this.view = obj;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        switch (this.$r8$classId) {
            case 0:
                View view = (View) this.view;
                if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                    Listener listener = new Listener(view, observer);
                    observer.onSubscribe(listener);
                    view.setOnClickListener(listener);
                    break;
                } else {
                    observer.onSubscribe(new RunnableDisposable(Functions.EMPTY_RUNNABLE));
                    StringBuilder sb = new StringBuilder("Expected to be called on the main thread but was ");
                    Thread currentThread = Thread.currentThread();
                    currentThread.getClass();
                    sb.append(currentThread.getName());
                    observer.onError(new IllegalStateException(sb.toString()));
                    break;
                }
            case 1:
                EditText editText = (EditText) this.view;
                TextViewTextChangesObservable$Listener textViewTextChangesObservable$Listener = new TextViewTextChangesObservable$Listener(editText, observer);
                observer.onSubscribe(textViewTextChangesObservable$Listener);
                editText.addTextChangedListener(textViewTextChangesObservable$Listener);
                observer.onNext(editText.getText());
                break;
            case 2:
                ObservableCreate$CreateEmitter observableCreate$CreateEmitter = new ObservableCreate$CreateEmitter(observer);
                observer.onSubscribe(observableCreate$CreateEmitter);
                try {
                    ((RxConvertKt$$ExternalSyntheticLambda0) this.view).subscribe(observableCreate$CreateEmitter);
                    break;
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    if (observableCreate$CreateEmitter.tryOnError(th)) {
                        return;
                    }
                    MathKt.onError(th);
                    return;
                }
            case 3:
                Object[] objArr = (Object[]) this.view;
                ObservableFromArray$FromArrayDisposable observableFromArray$FromArrayDisposable = new ObservableFromArray$FromArrayDisposable(observer, objArr);
                observer.onSubscribe(observableFromArray$FromArrayDisposable);
                if (!observableFromArray$FromArrayDisposable.fusionMode) {
                    int length = objArr.length;
                    for (int i = 0; i < length && !observableFromArray$FromArrayDisposable.disposed; i++) {
                        Object obj = objArr[i];
                        Observer observer2 = observableFromArray$FromArrayDisposable.downstream;
                        if (obj == null) {
                            observer2.onError(new NullPointerException(Modifier.CC.m("The element at index ", i, " is null")));
                            break;
                        } else {
                            observer2.onNext(obj);
                        }
                    }
                    if (!observableFromArray$FromArrayDisposable.disposed) {
                        observableFromArray$FromArrayDisposable.downstream.onComplete();
                        break;
                    }
                }
                break;
            case 4:
                ((Flowable) ((Publisher) this.view)).subscribe((Subscriber) new ObservableFromPublisher$PublisherSubscriber(observer));
                break;
            default:
                ((SingleAmb) this.view).subscribe(new SingleToObservable$SingleToObservableObserver(observer));
                break;
        }
    }
}
