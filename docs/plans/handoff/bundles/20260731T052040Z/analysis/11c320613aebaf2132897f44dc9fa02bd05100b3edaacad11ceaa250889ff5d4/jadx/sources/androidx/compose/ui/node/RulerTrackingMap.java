package androidx.compose.ui.node;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.layout.Ruler;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.AdapterHelper$UpdateOp;
import androidx.recyclerview.widget.RecyclerView;
import com.google.common.collect.CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;
import java.util.ArrayList;
import java.util.WeakHashMap;
import okhttp3.ConnectionSpec;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda1;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class RulerTrackingMap {
    public Object accessFlags;
    public Object layoutNodes;
    public Object newRulers;
    public Object rulers;
    public int size;
    public Object values;

    public RulerTrackingMap() {
        this.rulers = new Ruler[32];
        this.values = new float[32];
        this.accessFlags = new byte[32];
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.layoutNodes = new MutableScatterSet();
        this.newRulers = new MutableScatterSet();
    }

    public void applySupportBackgroundTint() {
        View view = (View) this.rulers;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((ConnectionSpec.Builder) this.accessFlags) != null) {
                if (((ConnectionSpec.Builder) this.newRulers) == null) {
                    this.newRulers = new ConnectionSpec.Builder();
                }
                ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.newRulers;
                builder.cipherSuites = null;
                builder.supportsTlsExtensions = false;
                builder.tlsVersions = null;
                builder.tls = false;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    builder.supportsTlsExtensions = true;
                    builder.cipherSuites = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    builder.tls = true;
                    builder.tlsVersions = backgroundTintMode;
                }
                if (builder.supportsTlsExtensions || builder.tls) {
                    AppCompatDrawableManager.tintDrawable(background, builder, view.getDrawableState());
                    return;
                }
            }
            ConnectionSpec.Builder builder2 = (ConnectionSpec.Builder) this.layoutNodes;
            if (builder2 != null) {
                AppCompatDrawableManager.tintDrawable(background, builder2, view.getDrawableState());
                return;
            }
            ConnectionSpec.Builder builder3 = (ConnectionSpec.Builder) this.accessFlags;
            if (builder3 != null) {
                AppCompatDrawableManager.tintDrawable(background, builder3, view.getDrawableState());
            }
        }
    }

    public boolean canFindInPreLayout(int i) {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            if (i3 != 8) {
                if (i3 == 1) {
                    int i4 = adapterHelper$UpdateOp.positionStart;
                    int i5 = adapterHelper$UpdateOp.itemCount + i4;
                    while (i4 < i5) {
                        if (findPositionOffset(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            } else {
                if (findPositionOffset(adapterHelper$UpdateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public void consumePostponedUpdates() {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((RecyclerView.AnonymousClass7) this.layoutNodes).dispatchUpdate((AdapterHelper$UpdateOp) arrayList.get(i));
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.size = 0;
    }

    public void consumeUpdatesInOnePass() {
        RecyclerView.AnonymousClass7 anonymousClass7 = (RecyclerView.AnonymousClass7) this.layoutNodes;
        consumePostponedUpdates();
        ArrayList arrayList = (ArrayList) this.values;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i);
            int i2 = adapterHelper$UpdateOp.cmd;
            if (i2 == 1) {
                anonymousClass7.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass7.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else if (i2 == 2) {
                anonymousClass7.dispatchUpdate(adapterHelper$UpdateOp);
                int i3 = adapterHelper$UpdateOp.positionStart;
                int i4 = adapterHelper$UpdateOp.itemCount;
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.offsetPositionRecordsForRemove(i3, i4, true);
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i4;
            } else if (i2 == 4) {
                anonymousClass7.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass7.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            } else if (i2 == 8) {
                anonymousClass7.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass7.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            }
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.size = 0;
    }

    public void dispatchAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i;
        Pools$SimplePool pools$SimplePool = (Pools$SimplePool) this.rulers;
        int i2 = adapterHelper$UpdateOp.cmd;
        if (i2 == 1 || i2 == 8) {
            _UtilJvmKt$$ExternalSyntheticLambda1.m$1("should not dispatch add or move for pre layout");
            return;
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart, i2);
        int i3 = adapterHelper$UpdateOp.positionStart;
        int i4 = adapterHelper$UpdateOp.cmd;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(adapterHelper$UpdateOp, "op should be remove or update.");
                return;
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < adapterHelper$UpdateOp.itemCount; i6++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed((i * i6) + adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.cmd);
            int i7 = adapterHelper$UpdateOp.cmd;
            if (i7 == 2 ? updatePositionWithPostponed2 != updatePositionWithPostponed : !(i7 == 4 && updatePositionWithPostponed2 == updatePositionWithPostponed + 1)) {
                AdapterHelper$UpdateOp obtainUpdateOp = obtainUpdateOp(i7, updatePositionWithPostponed, i5, adapterHelper$UpdateOp.payload);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i3);
                obtainUpdateOp.payload = null;
                pools$SimplePool.release(obtainUpdateOp);
                if (adapterHelper$UpdateOp.cmd == 4) {
                    i3 += i5;
                }
                i5 = 1;
                updatePositionWithPostponed = updatePositionWithPostponed2;
            } else {
                i5++;
            }
        }
        Object obj = adapterHelper$UpdateOp.payload;
        adapterHelper$UpdateOp.payload = null;
        pools$SimplePool.release(adapterHelper$UpdateOp);
        if (i5 > 0) {
            AdapterHelper$UpdateOp obtainUpdateOp2 = obtainUpdateOp(adapterHelper$UpdateOp.cmd, updatePositionWithPostponed, i5, obj);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i3);
            obtainUpdateOp2.payload = null;
            pools$SimplePool.release(obtainUpdateOp2);
        }
    }

    public void dispatchFirstPassAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i) {
        RecyclerView.AnonymousClass7 anonymousClass7 = (RecyclerView.AnonymousClass7) this.layoutNodes;
        anonymousClass7.dispatchUpdate(adapterHelper$UpdateOp);
        int i2 = adapterHelper$UpdateOp.cmd;
        if (i2 != 2) {
            if (i2 == 4) {
                anonymousClass7.markViewHoldersUpdated(i, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda1.m$1("only remove and update ops can be dispatched in first pass");
                return;
            }
        }
        int i3 = adapterHelper$UpdateOp.itemCount;
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.offsetPositionRecordsForRemove(i, i3, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i3;
    }

    public int findPositionOffset(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        while (i2 < size) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            int i4 = adapterHelper$UpdateOp.positionStart;
            if (i3 == 8) {
                if (i4 == i) {
                    i = adapterHelper$UpdateOp.itemCount;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (adapterHelper$UpdateOp.itemCount <= i) {
                        i++;
                    }
                }
            } else if (i4 > i) {
                continue;
            } else if (i3 == 2) {
                int i5 = adapterHelper$UpdateOp.itemCount;
                if (i < i4 + i5) {
                    return -1;
                }
                i -= i5;
            } else if (i3 == 1) {
                i += adapterHelper$UpdateOp.itemCount;
            }
            i2++;
        }
        return i;
    }

    public ColorStateList getSupportBackgroundTintList() {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder != null) {
            return (ColorStateList) builder.cipherSuites;
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder != null) {
            return (PorterDuff.Mode) builder.tlsVersions;
        }
        return null;
    }

    public boolean hasPendingUpdates() {
        return ((ArrayList) this.values).size() > 0;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        ColorStateList tintList;
        View view = (View) this.rulers;
        Context context = view.getContext();
        int[] iArr = R$styleable.ViewBackgroundHelper;
        ProcessFinisher obtainStyledAttributes = ProcessFinisher.obtainStyledAttributes(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.config;
        View view2 = (View) this.rulers;
        ViewCompat.saveAttributeDataForStyleable(view2, view2.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.config, i);
        try {
            if (typedArray.hasValue(0)) {
                this.size = typedArray.getResourceId(0, -1);
                AppCompatDrawableManager appCompatDrawableManager = (AppCompatDrawableManager) this.values;
                Context context2 = view.getContext();
                int i2 = this.size;
                synchronized (appCompatDrawableManager) {
                    tintList = appCompatDrawableManager.mResourceManager.getTintList(context2, i2);
                }
                if (tintList != null) {
                    setInternalBackgroundTint(tintList);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(obtainStyledAttributes.getColorStateList(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(DrawableUtils.parseTintMode(typedArray.getInt(2, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public AdapterHelper$UpdateOp obtainUpdateOp(int i, int i2, int i3, Object obj) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) ((Pools$SimplePool) this.rulers).acquire();
        if (adapterHelper$UpdateOp != null) {
            adapterHelper$UpdateOp.cmd = i;
            adapterHelper$UpdateOp.positionStart = i2;
            adapterHelper$UpdateOp.itemCount = i3;
            adapterHelper$UpdateOp.payload = obj;
            return adapterHelper$UpdateOp;
        }
        AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = new AdapterHelper$UpdateOp();
        adapterHelper$UpdateOp2.cmd = i;
        adapterHelper$UpdateOp2.positionStart = i2;
        adapterHelper$UpdateOp2.itemCount = i3;
        adapterHelper$UpdateOp2.payload = obj;
        return adapterHelper$UpdateOp2;
    }

    public void onSetBackgroundDrawable() {
        this.size = -1;
        setInternalBackgroundTint(null);
        applySupportBackgroundTint();
    }

    public void onSetBackgroundResource(int i) {
        ColorStateList colorStateList;
        this.size = i;
        AppCompatDrawableManager appCompatDrawableManager = (AppCompatDrawableManager) this.values;
        if (appCompatDrawableManager != null) {
            Context context = ((View) this.rulers).getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
            }
        } else {
            colorStateList = null;
        }
        setInternalBackgroundTint(colorStateList);
        applySupportBackgroundTint();
    }

    public void postponeAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        RecyclerView.AnonymousClass7 anonymousClass7 = (RecyclerView.AnonymousClass7) this.layoutNodes;
        ((ArrayList) this.accessFlags).add(adapterHelper$UpdateOp);
        int i = adapterHelper$UpdateOp.cmd;
        if (i == 1) {
            anonymousClass7.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            return;
        }
        if (i == 2) {
            int i2 = adapterHelper$UpdateOp.positionStart;
            int i3 = adapterHelper$UpdateOp.itemCount;
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i2, i3, false);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            anonymousClass7.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else if (i == 8) {
            anonymousClass7.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
        } else {
            CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0.m(adapterHelper$UpdateOp, "Unknown update op type for ");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0125 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void preProcess() {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.RulerTrackingMap.preProcess():void");
    }

    public void recycleUpdateOpsAndClearList(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i);
            adapterHelper$UpdateOp.payload = null;
            ((Pools$SimplePool) this.rulers).release(adapterHelper$UpdateOp);
        }
        arrayList.clear();
    }

    public void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((ConnectionSpec.Builder) this.accessFlags) == null) {
                this.accessFlags = new ConnectionSpec.Builder();
            }
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.accessFlags;
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
        } else {
            this.accessFlags = null;
        }
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (((ConnectionSpec.Builder) this.layoutNodes) == null) {
            this.layoutNodes = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        builder.cipherSuites = colorStateList;
        builder.supportsTlsExtensions = true;
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (((ConnectionSpec.Builder) this.layoutNodes) == null) {
            this.layoutNodes = new ConnectionSpec.Builder();
        }
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        builder.tlsVersions = mode;
        builder.tls = true;
        applySupportBackgroundTint();
    }

    public int updatePositionWithPostponed(int i, int i2) {
        int i3;
        int i4;
        Pools$SimplePool pools$SimplePool = (Pools$SimplePool) this.rulers;
        ArrayList arrayList = (ArrayList) this.accessFlags;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(size);
            int i5 = adapterHelper$UpdateOp.cmd;
            int i6 = adapterHelper$UpdateOp.positionStart;
            if (i5 == 8) {
                int i7 = adapterHelper$UpdateOp.itemCount;
                if (i6 < i7) {
                    i4 = i7;
                    i3 = i6;
                } else {
                    i3 = i7;
                    i4 = i6;
                }
                if (i < i3 || i > i4) {
                    if (i < i6) {
                        if (i2 == 1) {
                            adapterHelper$UpdateOp.positionStart = i6 + 1;
                            adapterHelper$UpdateOp.itemCount = i7 + 1;
                        } else if (i2 == 2) {
                            adapterHelper$UpdateOp.positionStart = i6 - 1;
                            adapterHelper$UpdateOp.itemCount = i7 - 1;
                        }
                    }
                } else if (i3 == i6) {
                    if (i2 == 1) {
                        adapterHelper$UpdateOp.itemCount = i7 + 1;
                    } else if (i2 == 2) {
                        adapterHelper$UpdateOp.itemCount = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        adapterHelper$UpdateOp.positionStart = i6 + 1;
                    } else if (i2 == 2) {
                        adapterHelper$UpdateOp.positionStart = i6 - 1;
                    }
                    i--;
                }
            } else if (i6 <= i) {
                if (i5 == 1) {
                    i -= adapterHelper$UpdateOp.itemCount;
                } else if (i5 == 2) {
                    i += adapterHelper$UpdateOp.itemCount;
                }
            } else if (i2 == 1) {
                adapterHelper$UpdateOp.positionStart = i6 + 1;
            } else if (i2 == 2) {
                adapterHelper$UpdateOp.positionStart = i6 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = (AdapterHelper$UpdateOp) arrayList.get(size2);
            int i8 = adapterHelper$UpdateOp2.cmd;
            int i9 = adapterHelper$UpdateOp2.itemCount;
            if (i8 == 8) {
                if (i9 == adapterHelper$UpdateOp2.positionStart || i9 < 0) {
                    arrayList.remove(size2);
                    adapterHelper$UpdateOp2.payload = null;
                    pools$SimplePool.release(adapterHelper$UpdateOp2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                adapterHelper$UpdateOp2.payload = null;
                pools$SimplePool.release(adapterHelper$UpdateOp2);
            }
        }
        return i;
    }

    public RulerTrackingMap(int i, String str, String str2, String str3, String str4, String str5) {
        this.rulers = str;
        this.values = str2;
        this.accessFlags = str3;
        this.layoutNodes = str4;
        this.newRulers = str5;
        this.size = i;
    }

    public RulerTrackingMap(View view) {
        this.size = -1;
        this.rulers = view;
        this.values = AppCompatDrawableManager.get();
    }
}
