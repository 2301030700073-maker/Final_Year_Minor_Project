package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.internal.util.OpenHashSet;
import j$.util.Objects;
import java.util.ArrayList;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CompositeDisposable implements Disposable, DisposableContainer {
    public volatile boolean disposed;
    public OpenHashSet resources;

    public static void dispose(OpenHashSet openHashSet) {
        if (openHashSet == null) {
            return;
        }
        ArrayList arrayList = null;
        for (Object obj : (Object[]) openHashSet.keys) {
            if (obj instanceof Disposable) {
                try {
                    ((Disposable) obj).dispose();
                } catch (Throwable th) {
                    AppKt.throwIfFatal(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new CompositeException(arrayList);
            }
            throw ExceptionHelper.wrapOrThrow((Throwable) arrayList.get(0));
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean add(Disposable disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        if (!this.disposed) {
            synchronized (this) {
                try {
                    if (!this.disposed) {
                        OpenHashSet openHashSet = this.resources;
                        if (openHashSet == null) {
                            openHashSet = new OpenHashSet();
                            int numberOfLeadingZeros = 1 << (32 - Integer.numberOfLeadingZeros(15));
                            openHashSet.mask = numberOfLeadingZeros - 1;
                            openHashSet.maxSize = (int) (0.75f * numberOfLeadingZeros);
                            openHashSet.keys = new Object[numberOfLeadingZeros];
                            this.resources = openHashSet;
                        }
                        openHashSet.add(disposable);
                        return true;
                    }
                } finally {
                }
            }
        }
        disposable.dispose();
        return false;
    }

    public final void clear() {
        if (this.disposed) {
            return;
        }
        synchronized (this) {
            try {
                if (this.disposed) {
                    return;
                }
                OpenHashSet openHashSet = this.resources;
                this.resources = null;
                dispose(openHashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean delete(Disposable disposable) {
        Object obj;
        Objects.requireNonNull(disposable, "disposable is null");
        if (this.disposed) {
            return false;
        }
        synchronized (this) {
            try {
                if (this.disposed) {
                    return false;
                }
                OpenHashSet openHashSet = this.resources;
                if (openHashSet != null) {
                    Object[] objArr = (Object[]) openHashSet.keys;
                    int i = openHashSet.mask;
                    int hashCode = disposable.hashCode() * (-1640531527);
                    int i2 = (hashCode ^ (hashCode >>> 16)) & i;
                    Object obj2 = objArr[i2];
                    if (obj2 != null) {
                        if (obj2.equals(disposable)) {
                            openHashSet.removeEntry(objArr, i2, i);
                        } else {
                            do {
                                i2 = (i2 + 1) & i;
                                obj = objArr[i2];
                                if (obj == null) {
                                }
                            } while (!obj.equals(disposable));
                            openHashSet.removeEntry(objArr, i2, i);
                        }
                        return true;
                    }
                }
                return false;
            } finally {
            }
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.disposed;
    }

    @Override // io.reactivex.rxjava3.disposables.DisposableContainer
    public final boolean remove(Disposable disposable) {
        if (!delete(disposable)) {
            return false;
        }
        disposable.dispose();
        return true;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        if (this.disposed) {
            return;
        }
        synchronized (this) {
            try {
                if (this.disposed) {
                    return;
                }
                this.disposed = true;
                OpenHashSet openHashSet = this.resources;
                this.resources = null;
                dispose(openHashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
