package org.wikipedia.databinding;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import android.os.Looper;
import android.os.Trace;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ComposeNodeLifecycleCallback;
import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.Recomposer$$ExternalSyntheticLambda6;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.PausedCompositionRemembers;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.ui.unit.DpKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import coil3.util.ContextsKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.progressindicator.LinearProgressIndicator;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ClampedCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider$Lazy;
import com.google.android.material.shape.ShapePath;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import okhttp3.Request;
import org.wikipedia.edit.SyntaxHighlightableEditText;
import org.wikipedia.edit.WikiTextKeyboardFormattingView;
import org.wikipedia.edit.WikiTextKeyboardHeadingsView;
import org.wikipedia.edit.WikiTextKeyboardView;
import org.wikipedia.readinglist.ReadingListHeaderView;
import org.wikipedia.views.SearchEmptyView;
import org.wikipedia.views.WikiErrorView;
import org.wikipedia.views.WikiSwipeRefreshLayout;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ActivityLoginBinding {
    public Object captchaContainer;
    public Object footerContainer;
    public final Object login2faText;
    public final Object loginButton;
    public final Object loginCreateAccountButton;
    public Object loginPasswordInput;
    public Object loginPrimaryContainer;
    public Object loginUsernameText;
    public Object toolbar;
    public Object viewLoginError;
    public Object viewProgressBar;

    public ActivityLoginBinding(int i) {
        switch (i) {
            case 2:
                this.captchaContainer = new ShapePath[4];
                this.footerContainer = new Matrix[4];
                this.login2faText = new Matrix[4];
                this.loginPasswordInput = new PointF();
                this.loginUsernameText = new Path();
                this.loginButton = new Path();
                this.loginCreateAccountButton = new ShapePath();
                this.loginPrimaryContainer = new float[2];
                this.toolbar = new float[2];
                this.viewLoginError = new Path();
                this.viewProgressBar = new Path();
                for (int i2 = 0; i2 < 4; i2++) {
                    ((ShapePath[]) this.captchaContainer)[i2] = new ShapePath();
                    ((Matrix[]) this.footerContainer)[i2] = new Matrix();
                    ((Matrix[]) this.login2faText)[i2] = new Matrix();
                }
                break;
            default:
                MutableVector mutableVector = new MutableVector(new GapRememberObserverHolder[16]);
                this.login2faText = mutableVector;
                MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
                this.loginPasswordInput = new MutableScatterSet();
                this.loginUsernameText = mutableVector;
                this.loginButton = new MutableVector(new Object[16]);
                this.loginCreateAccountButton = new MutableVector(new Function0[16]);
                break;
        }
    }

    public static final boolean forgetting$removeFrom(GapRememberObserverHolder gapRememberObserverHolder, MutableVector mutableVector) {
        Object[] objArr = mutableVector.content;
        int i = mutableVector.size;
        for (int i2 = 0; i2 < i; i2++) {
            RememberObserver rememberObserver = ((GapRememberObserverHolder) objArr[i2]).wrapped;
            if (rememberObserver instanceof PausedCompositionRemembers) {
                MutableVector mutableVector2 = ((PausedCompositionRemembers) rememberObserver).pausedRemembers;
                if (mutableVector2.remove(gapRememberObserverHolder) || forgetting$removeFrom(gapRememberObserverHolder, mutableVector2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static ActivityLoginBinding getInstanceOrCreate() {
        return Looper.getMainLooper().getThread() == Thread.currentThread() ? ShapeAppearancePathProvider$Lazy.INSTANCE : new ActivityLoginBinding(2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v6 */
    public void calculatePath(ShapeAppearanceModel shapeAppearanceModel, float[] fArr, float f, RectF rectF, MaterialShapeDrawable.AnonymousClass1 anonymousClass1, Path path) {
        int i;
        boolean z;
        float f2;
        MaterialShapeDrawable.AnonymousClass1 anonymousClass12;
        boolean z2;
        MaterialShapeDrawable.AnonymousClass1 anonymousClass13 = anonymousClass1;
        Matrix[] matrixArr = (Matrix[]) this.login2faText;
        float[] fArr2 = (float[]) this.loginPrimaryContainer;
        ShapePath[] shapePathArr = (ShapePath[]) this.captchaContainer;
        Matrix[] matrixArr2 = (Matrix[]) this.footerContainer;
        path.rewind();
        Path path2 = (Path) this.loginUsernameText;
        path2.rewind();
        Path path3 = (Path) this.loginButton;
        path3.rewind();
        path3.addRect(rectF, Path.Direction.CW);
        int i2 = 0;
        while (true) {
            z = 0;
            if (i2 >= 4) {
                break;
            }
            PointF pointF = (PointF) this.loginPasswordInput;
            CornerSize clampedCornerSize = fArr == null ? i2 != 1 ? i2 != 2 ? i2 != 3 ? shapeAppearanceModel.topRightCornerSize : shapeAppearanceModel.topLeftCornerSize : shapeAppearanceModel.bottomLeftCornerSize : shapeAppearanceModel.bottomRightCornerSize : new ClampedCornerSize(fArr[i2]);
            ContextsKt contextsKt = i2 != 1 ? i2 != 2 ? i2 != 3 ? shapeAppearanceModel.topRightCorner : shapeAppearanceModel.topLeftCorner : shapeAppearanceModel.bottomLeftCorner : shapeAppearanceModel.bottomRightCorner;
            ShapePath shapePath = shapePathArr[i2];
            contextsKt.getClass();
            Matrix[] matrixArr3 = matrixArr;
            contextsKt.getCornerPath(shapePath, f, clampedCornerSize.getCornerSize(rectF));
            int i3 = i2 + 1;
            float f3 = (i3 % 4) * 90;
            matrixArr2[i2].reset();
            if (i2 == 1) {
                pointF.set(rectF.right, rectF.bottom);
            } else if (i2 == 2) {
                pointF.set(rectF.left, rectF.bottom);
            } else if (i2 != 3) {
                pointF.set(rectF.right, rectF.top);
            } else {
                pointF.set(rectF.left, rectF.top);
            }
            matrixArr2[i2].setTranslate(pointF.x, pointF.y);
            matrixArr2[i2].preRotate(f3);
            ShapePath shapePath2 = shapePathArr[i2];
            fArr2[0] = shapePath2.endX;
            fArr2[1] = shapePath2.endY;
            matrixArr2[i2].mapPoints(fArr2);
            matrixArr3[i2].reset();
            matrixArr3[i2].setTranslate(fArr2[0], fArr2[1]);
            matrixArr3[i2].preRotate(f3);
            i2 = i3;
            matrixArr = matrixArr3;
        }
        Matrix[] matrixArr4 = matrixArr;
        int i4 = 0;
        for (i = 4; i4 < i; i = 4) {
            ShapePath shapePath3 = shapePathArr[i4];
            shapePath3.getClass();
            fArr2[z] = 0.0f;
            fArr2[1] = shapePath3.startY;
            matrixArr2[i4].mapPoints(fArr2);
            if (i4 == 0) {
                path.moveTo(fArr2[z], fArr2[1]);
            } else {
                path.lineTo(fArr2[z], fArr2[1]);
            }
            shapePathArr[i4].applyToPath(matrixArr2[i4], path);
            if (anonymousClass13 != null) {
                ShapePath shapePath4 = shapePathArr[i4];
                Matrix matrix = matrixArr2[i4];
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                BitSet bitSet = materialShapeDrawable.containsIncompatibleShadowOp;
                shapePath4.getClass();
                f2 = 0.0f;
                bitSet.set(i4, z);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.cornerShadowOperation;
                shapePath4.addConnectingShadowIfNecessary(shapePath4.endShadowAngle);
                shadowCompatOperationArr[i4] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList val$operations;
                    public final /* synthetic */ Matrix val$transformCopy;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix2) {
                        r1 = arrayList;
                        r2 = matrix2;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void draw(Matrix matrix2, ShadowRenderer shadowRenderer, int i5, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).draw(r2, shadowRenderer, i5, canvas);
                        }
                    }
                };
            } else {
                f2 = 0.0f;
            }
            Path path4 = (Path) this.viewLoginError;
            ShapePath shapePath5 = (ShapePath) this.loginCreateAccountButton;
            int i5 = i4 + 1;
            int i6 = i5 % 4;
            ShapePath shapePath6 = shapePathArr[i4];
            fArr2[0] = shapePath6.endX;
            fArr2[1] = shapePath6.endY;
            matrixArr2[i4].mapPoints(fArr2);
            float[] fArr3 = (float[]) this.toolbar;
            ShapePath shapePath7 = shapePathArr[i6];
            shapePath7.getClass();
            fArr3[0] = f2;
            fArr3[1] = shapePath7.startY;
            matrixArr2[i6].mapPoints(fArr3);
            ShapePath[] shapePathArr2 = shapePathArr;
            Matrix[] matrixArr5 = matrixArr2;
            float max = Math.max(((float) Math.hypot(fArr2[0] - fArr3[0], fArr2[1] - fArr3[1])) - 0.001f, f2);
            ShapePath shapePath8 = shapePathArr2[i4];
            fArr2[0] = shapePath8.endX;
            fArr2[1] = shapePath8.endY;
            matrixArr5[i4].mapPoints(fArr2);
            if (i4 == 1 || i4 == 3) {
                Math.abs(rectF.centerX() - fArr2[0]);
            } else {
                Math.abs(rectF.centerY() - fArr2[1]);
            }
            shapePath5.reset(RecyclerView.DECELERATION_RATE, 270.0f, RecyclerView.DECELERATION_RATE);
            (i4 != 1 ? i4 != 2 ? i4 != 3 ? shapeAppearanceModel.rightEdge : shapeAppearanceModel.topEdge : shapeAppearanceModel.leftEdge : shapeAppearanceModel.bottomEdge).getClass();
            shapePath5.lineTo(max, RecyclerView.DECELERATION_RATE);
            path4.reset();
            shapePath5.applyToPath(matrixArr4[i4], path4);
            if (pathOverlapsCorner(path4, i4) || pathOverlapsCorner(path4, i6)) {
                path4.op(path4, path3, Path.Op.DIFFERENCE);
                fArr2[0] = 0.0f;
                fArr2[1] = shapePath5.startY;
                matrixArr4[i4].mapPoints(fArr2);
                path2.moveTo(fArr2[0], fArr2[1]);
                shapePath5.applyToPath(matrixArr4[i4], path2);
            } else {
                shapePath5.applyToPath(matrixArr4[i4], path);
            }
            if (anonymousClass1 != null) {
                Matrix matrix2 = matrixArr4[i4];
                anonymousClass12 = anonymousClass1;
                MaterialShapeDrawable materialShapeDrawable2 = MaterialShapeDrawable.this;
                z2 = false;
                materialShapeDrawable2.containsIncompatibleShadowOp.set(i4 + 4, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr2 = materialShapeDrawable2.edgeShadowOperation;
                shapePath5.addConnectingShadowIfNecessary(shapePath5.endShadowAngle);
                shadowCompatOperationArr2[i4] = new ShapePath.ShadowCompatOperation() { // from class: com.google.android.material.shape.ShapePath.1
                    public final /* synthetic */ ArrayList val$operations;
                    public final /* synthetic */ Matrix val$transformCopy;

                    public AnonymousClass1(ArrayList arrayList, Matrix matrix22) {
                        r1 = arrayList;
                        r2 = matrix22;
                    }

                    @Override // com.google.android.material.shape.ShapePath.ShadowCompatOperation
                    public final void draw(Matrix matrix22, ShadowRenderer shadowRenderer, int i52, Canvas canvas) {
                        Iterator it = r1.iterator();
                        while (it.hasNext()) {
                            ((ShadowCompatOperation) it.next()).draw(r2, shadowRenderer, i52, canvas);
                        }
                    }
                };
            } else {
                anonymousClass12 = anonymousClass1;
                z2 = false;
            }
            z = z2;
            anonymousClass13 = anonymousClass12;
            i4 = i5;
            shapePathArr = shapePathArr2;
            matrixArr2 = matrixArr5;
        }
        path.close();
        path2.close();
        if (path2.isEmpty()) {
            return;
        }
        path.op(path2, Path.Op.UNION);
    }

    public void clear() {
        this.captchaContainer = null;
        this.footerContainer = null;
        MutableVector mutableVector = (MutableVector) this.login2faText;
        mutableVector.clear();
        ((MutableScatterSet) this.loginPasswordInput).clear();
        this.loginUsernameText = mutableVector;
        ((MutableVector) this.loginButton).clear();
        ((MutableVector) this.loginCreateAccountButton).clear();
        this.loginPrimaryContainer = null;
        this.toolbar = null;
        this.viewLoginError = null;
    }

    public void dispatchAbandons() {
        Set set = (Set) this.captchaContainer;
        if (set == null || set.isEmpty()) {
            return;
        }
        Trace.beginSection("Compose:abandons");
        try {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                RememberObserver rememberObserver = (RememberObserver) it.next();
                it.remove();
                rememberObserver.onAbandoned();
            }
        } finally {
            Trace.endSection();
        }
    }

    public void dispatchRememberObservers() {
        MutableVector mutableVector = (MutableVector) this.login2faText;
        MutableVector mutableVector2 = (MutableVector) this.loginButton;
        Set set = (Set) this.captchaContainer;
        if (set == null) {
            return;
        }
        this.viewProgressBar = null;
        int i = 23;
        if (mutableVector2.size != 0) {
            Trace.beginSection("Compose:onForgotten");
            try {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) this.loginPrimaryContainer;
                int i2 = mutableVector2.size;
                while (true) {
                    i2--;
                    if (-1 >= i2) {
                        break;
                    }
                    Object obj = mutableVector2.content[i2];
                    try {
                        if (obj instanceof GapRememberObserverHolder) {
                            RememberObserver rememberObserver = ((GapRememberObserverHolder) obj).wrapped;
                            set.remove(rememberObserver);
                            rememberObserver.onForgotten();
                        }
                        if (obj instanceof ComposeNodeLifecycleCallback) {
                            if (mutableScatterSet == null || !mutableScatterSet.contains(obj)) {
                                ((ComposeNodeLifecycleCallback) obj).onDeactivate();
                            } else {
                                ((ComposeNodeLifecycleCallback) obj).onRelease();
                            }
                        }
                    } catch (Throwable th) {
                        CompositionErrorContextImpl compositionErrorContextImpl = (CompositionErrorContextImpl) this.footerContainer;
                        if (compositionErrorContextImpl != null) {
                            DpKt.tryAttachComposeStackTrace(th, new Recomposer$$ExternalSyntheticLambda6(i, compositionErrorContextImpl, obj));
                        }
                        throw th;
                    }
                }
            } finally {
                Trace.endSection();
            }
        }
        if (mutableVector.size != 0) {
            Trace.beginSection("Compose:onRemembered");
            try {
                Set set2 = (Set) this.captchaContainer;
                if (set2 != null) {
                    Object[] objArr = mutableVector.content;
                    int i3 = mutableVector.size;
                    for (int i4 = 0; i4 < i3; i4++) {
                        GapRememberObserverHolder gapRememberObserverHolder = (GapRememberObserverHolder) objArr[i4];
                        RememberObserver rememberObserver2 = gapRememberObserverHolder.wrapped;
                        set2.remove(rememberObserver2);
                        try {
                            rememberObserver2.onRemembered();
                        } catch (Throwable th2) {
                            CompositionErrorContextImpl compositionErrorContextImpl2 = (CompositionErrorContextImpl) this.footerContainer;
                            if (compositionErrorContextImpl2 != null) {
                                DpKt.tryAttachComposeStackTrace(th2, new Recomposer$$ExternalSyntheticLambda6(i, compositionErrorContextImpl2, gapRememberObserverHolder));
                            }
                            throw th2;
                        }
                    }
                }
            } finally {
            }
        }
    }

    public void dispatchSideEffects() {
        MutableVector mutableVector = (MutableVector) this.loginCreateAccountButton;
        if (mutableVector.size != 0) {
            Trace.beginSection("Compose:sideeffects");
            try {
                Object[] objArr = mutableVector.content;
                int i = mutableVector.size;
                for (int i2 = 0; i2 < i; i2++) {
                    ((Function0) objArr[i2]).invoke();
                }
                mutableVector.clear();
            } finally {
                Trace.endSection();
            }
        }
    }

    public void forgetting(GapRememberObserverHolder gapRememberObserverHolder) {
        MutableVector mutableVector = (MutableVector) this.login2faText;
        if (!((MutableScatterSet) this.loginPasswordInput).contains(gapRememberObserverHolder)) {
            MutableScatterSet mutableScatterSet = (MutableScatterSet) this.viewProgressBar;
            if (mutableScatterSet == null || !mutableScatterSet.contains(gapRememberObserverHolder)) {
                ((MutableVector) this.loginButton).add(gapRememberObserverHolder);
                return;
            }
            return;
        }
        ((MutableScatterSet) this.loginPasswordInput).remove(gapRememberObserverHolder);
        if (!((MutableVector) this.loginUsernameText).remove(gapRememberObserverHolder) && !mutableVector.remove(gapRememberObserverHolder)) {
            forgetting$removeFrom(gapRememberObserverHolder, mutableVector);
        }
        Set set = (Set) this.captchaContainer;
        if (set == null) {
            return;
        }
        set.add(gapRememberObserverHolder.wrapped);
    }

    public boolean pathOverlapsCorner(Path path, int i) {
        Path path2 = (Path) this.viewProgressBar;
        path2.reset();
        ((ShapePath[]) this.captchaContainer)[i].applyToPath(((Matrix[]) this.footerContainer)[i], path2);
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        path2.computeBounds(rectF, true);
        path.op(path2, Path.Op.INTERSECT);
        path.computeBounds(rectF, true);
        return !rectF.isEmpty() || (rectF.width() > 1.0f && rectF.height() > 1.0f);
    }

    public void prepare(Set set, CompositionErrorContextImpl compositionErrorContextImpl) {
        clear();
        this.captchaContainer = set;
        this.footerContainer = compositionErrorContextImpl;
    }

    public ActivityLoginBinding(FrameLayout frameLayout, LinearLayout linearLayout, TextView textView, TextView textView2, TextView textView3, ImageView imageView, ImageView imageView2, TextView textView4, TextView textView5, ImageView imageView3, TextView textView6) {
        this.captchaContainer = frameLayout;
        this.loginPrimaryContainer = linearLayout;
        this.footerContainer = textView;
        this.login2faText = textView2;
        this.loginPasswordInput = textView3;
        this.loginUsernameText = imageView;
        this.loginButton = imageView2;
        this.loginCreateAccountButton = textView4;
        this.toolbar = textView5;
        this.viewLoginError = imageView3;
        this.viewProgressBar = textView6;
    }

    public /* synthetic */ ActivityLoginBinding(FrameLayout frameLayout, View view, View view2, View view3, ViewGroup viewGroup, View view4, View view5, View view6, View view7, View view8, View view9) {
        this.captchaContainer = frameLayout;
        this.footerContainer = view;
        this.login2faText = view2;
        this.loginPasswordInput = view3;
        this.loginUsernameText = viewGroup;
        this.loginButton = view4;
        this.loginCreateAccountButton = view5;
        this.loginPrimaryContainer = view6;
        this.toolbar = view7;
        this.viewLoginError = view8;
        this.viewProgressBar = view9;
    }

    public ActivityLoginBinding(FrameLayout frameLayout, GroupCaptchaBinding groupCaptchaBinding, Request.Builder builder, TextInputLayout textInputLayout, Button button, Button button2, TextInputLayout textInputLayout2, LinearLayout linearLayout, TextInputLayout textInputLayout3, MaterialToolbar materialToolbar, WikiErrorView wikiErrorView, LinearProgressIndicator linearProgressIndicator) {
        this.captchaContainer = groupCaptchaBinding;
        this.footerContainer = builder;
        this.login2faText = textInputLayout;
        this.loginButton = button;
        this.loginCreateAccountButton = button2;
        this.loginPasswordInput = textInputLayout2;
        this.loginPrimaryContainer = linearLayout;
        this.loginUsernameText = textInputLayout3;
        this.toolbar = materialToolbar;
        this.viewLoginError = wikiErrorView;
        this.viewProgressBar = linearProgressIndicator;
    }

    public ActivityLoginBinding(LinearLayout linearLayout, FloatingActionButton floatingActionButton, CoordinatorLayout coordinatorLayout, LinearLayout linearLayout2, TextView textView, WikiErrorView wikiErrorView, ProgressBar progressBar, RecyclerView recyclerView, TabLayout tabLayout, TextView textView2, MaterialToolbar materialToolbar) {
        this.loginPrimaryContainer = linearLayout;
        this.captchaContainer = floatingActionButton;
        this.footerContainer = coordinatorLayout;
        this.login2faText = linearLayout2;
        this.loginPasswordInput = textView;
        this.viewLoginError = wikiErrorView;
        this.loginUsernameText = progressBar;
        this.loginButton = recyclerView;
        this.loginCreateAccountButton = tabLayout;
        this.viewProgressBar = textView2;
        this.toolbar = materialToolbar;
    }

    public ActivityLoginBinding(CoordinatorLayout coordinatorLayout, WikiErrorView wikiErrorView, LinearProgressIndicator linearProgressIndicator, AppBarLayout appBarLayout, TextView textView, ReadingListHeaderView readingListHeaderView, RecyclerView recyclerView, WikiSwipeRefreshLayout wikiSwipeRefreshLayout, MaterialToolbar materialToolbar, CollapsingToolbarLayout collapsingToolbarLayout, SearchEmptyView searchEmptyView) {
        this.captchaContainer = coordinatorLayout;
        this.viewLoginError = wikiErrorView;
        this.viewProgressBar = linearProgressIndicator;
        this.footerContainer = appBarLayout;
        this.login2faText = textView;
        this.loginPasswordInput = readingListHeaderView;
        this.loginUsernameText = recyclerView;
        this.loginButton = wikiSwipeRefreshLayout;
        this.toolbar = materialToolbar;
        this.loginCreateAccountButton = collapsingToolbarLayout;
        this.loginPrimaryContainer = searchEmptyView;
    }

    public ActivityLoginBinding(ConstraintLayout constraintLayout, GroupCaptchaBinding groupCaptchaBinding, WikiTextKeyboardView wikiTextKeyboardView, WikiTextKeyboardFormattingView wikiTextKeyboardFormattingView, WikiTextKeyboardHeadingsView wikiTextKeyboardHeadingsView, ScrollView scrollView, ScrollView scrollView2, SyntaxHighlightableEditText syntaxHighlightableEditText, MaterialToolbar materialToolbar, WikiErrorView wikiErrorView, LinearProgressIndicator linearProgressIndicator) {
        this.footerContainer = constraintLayout;
        this.captchaContainer = groupCaptchaBinding;
        this.login2faText = wikiTextKeyboardView;
        this.loginPasswordInput = wikiTextKeyboardFormattingView;
        this.loginUsernameText = wikiTextKeyboardHeadingsView;
        this.loginButton = scrollView;
        this.loginCreateAccountButton = scrollView2;
        this.loginPrimaryContainer = syntaxHighlightableEditText;
        this.toolbar = materialToolbar;
        this.viewLoginError = wikiErrorView;
        this.viewProgressBar = linearProgressIndicator;
    }

    public ActivityLoginBinding(LinearLayout linearLayout, Button button, Button button2, ConstraintLayout constraintLayout, MaterialCardView materialCardView, TextView textView, MaterialCardView materialCardView2, TextView textView2, RecyclerView recyclerView, WikiSwipeRefreshLayout wikiSwipeRefreshLayout, MaterialToolbar materialToolbar) {
        this.loginPrimaryContainer = linearLayout;
        this.loginButton = button;
        this.loginCreateAccountButton = button2;
        this.captchaContainer = constraintLayout;
        this.footerContainer = materialCardView;
        this.login2faText = textView;
        this.loginPasswordInput = materialCardView2;
        this.loginUsernameText = textView2;
        this.viewLoginError = recyclerView;
        this.viewProgressBar = wikiSwipeRefreshLayout;
        this.toolbar = materialToolbar;
    }

    public ActivityLoginBinding(FrameLayout frameLayout, MaterialButton materialButton, ImageView imageView, ImageView imageView2, ConstraintLayout constraintLayout, ViewPager2 viewPager2, ImageView imageView3, MaterialToolbar materialToolbar, Spinner spinner, LinearLayout linearLayout, Spinner spinner2) {
        this.captchaContainer = frameLayout;
        this.footerContainer = materialButton;
        this.login2faText = imageView;
        this.loginPasswordInput = imageView2;
        this.loginUsernameText = constraintLayout;
        this.loginButton = viewPager2;
        this.loginCreateAccountButton = imageView3;
        this.toolbar = materialToolbar;
        this.viewLoginError = spinner;
        this.loginPrimaryContainer = linearLayout;
        this.viewProgressBar = spinner2;
    }
}
