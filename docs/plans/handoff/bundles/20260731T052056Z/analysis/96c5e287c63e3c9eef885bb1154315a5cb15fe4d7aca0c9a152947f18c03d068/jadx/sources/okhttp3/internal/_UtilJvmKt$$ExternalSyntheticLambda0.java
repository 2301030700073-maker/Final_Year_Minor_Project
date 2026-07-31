package okhttp3.internal;

import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.animation.core.Animation;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.tabs.TabLayout;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.ProtocolException;
import kotlinx.serialization.UnknownFieldException;
import org.wikipedia.page.PageActivity;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class _UtilJvmKt$$ExternalSyntheticLambda0 implements ActivityResultCallback, OnApplyWindowInsetsListener {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, int i) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + ((char) i)).toString());
    }

    public static /* synthetic */ void m$1(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m$2(int i, String str) {
        throw new IllegalStateException(str + i);
    }

    public static /* synthetic */ void m$3(String str, Object obj) {
        throw new IllegalArgumentException((str + obj).toString());
    }

    public static /* synthetic */ void m$4(String str, Object obj) {
        throw new IOException(str + obj);
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ((Boolean) obj).getClass();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = PageActivity.$r8$clinit;
        view.getClass();
        Insets insets = windowInsetsCompat.mImpl.getInsets(519);
        insets.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            m$3("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            return null;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = insets.top;
        marginLayoutParams.leftMargin = insets.left;
        marginLayoutParams.bottomMargin = insets.bottom;
        marginLayoutParams.rightMargin = insets.right;
        view.setLayoutParams(marginLayoutParams);
        return WindowInsetsCompat.CONSUMED;
    }

    public static /* synthetic */ void m$2(String str) {
        throw new IOException(str);
    }

    public static /* synthetic */ void m$2(String str, Object obj) {
        throw new FileNotFoundException(str + obj);
    }

    public static /* synthetic */ void m$1(String str) {
        throw new IllegalStateException(str);
    }

    public static /* synthetic */ void m$3(String str) {
        throw new NullPointerException(str);
    }

    public static /* synthetic */ void m$1(String str, Object obj) {
        throw new IOException(str + obj);
    }

    public void onConfigureTab(TabLayout.Tab tab) {
    }

    public static /* synthetic */ void m(int i, String str) {
        throw new IllegalStateException((str + i).toString());
    }

    public static /* synthetic */ void m(Object obj) {
        throw new IllegalArgumentException(obj.toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new ProtocolException(str + obj + ((Object) " at ") + obj2);
    }

    public static /* synthetic */ void m(String str) {
        throw new IllegalArgumentException(str);
    }

    public static /* synthetic */ void m(String str, Object obj) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void m() {
        throw new IllegalArgumentException();
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        throw new IllegalStateException((str + obj + obj2 + obj3 + obj4).toString());
    }

    public static /* synthetic */ void m(Throwable th) {
        throw new RuntimeException(th);
    }

    public static void m(int i) {
        throw new UnknownFieldException(Animation.CC.m(i, "An unknown field for index "));
    }
}
