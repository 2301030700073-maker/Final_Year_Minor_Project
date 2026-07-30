package defpackage;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatRadioButton;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class W1 {

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final Object[] f4294do = new Object[2];

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final Class<?>[] f4289do = {Context.class, AttributeSet.class};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final int[] f4288do = {R.attr.onClick};

    /* renamed from: if, reason: not valid java name */
    public static final int[] f4292if = {R.attr.accessibilityHeading};

    /* renamed from: for, reason: not valid java name */
    public static final int[] f4291for = {R.attr.accessibilityPaneTitle};

    /* renamed from: new, reason: not valid java name */
    public static final int[] f4293new = {R.attr.screenReaderFocusable};

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public static final String[] f4290do = {"android.widget.", "android.view.", "android.webkit."};

    /* renamed from: do, reason: not valid java name */
    public static final C2680eE<String, Constructor<? extends View>> f4287do = new C2680eE<>();

    /* renamed from: W1$do, reason: invalid class name */
    public static class Cdo implements View.OnClickListener {

        /* renamed from: break, reason: not valid java name */
        public final String f4295break;

        /* renamed from: do, reason: not valid java name */
        public Context f4296do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final View f4297do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public Method f4298do;

        public Cdo(View view, String str) {
            this.f4297do = view;
            this.f4295break = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String str;
            Method method;
            if (this.f4298do == null) {
                View view2 = this.f4297do;
                Context context = view2.getContext();
                while (true) {
                    String str2 = this.f4295break;
                    if (context == null) {
                        int id = view2.getId();
                        if (id == -1) {
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            str = " with id '" + view2.getContext().getResources().getResourceEntryName(id) + "'";
                        }
                        StringBuilder m2493break = V1.m2493break("Could not find method ", str2, "(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                        m2493break.append(view2.getClass());
                        m2493break.append(str);
                        throw new IllegalStateException(m2493break.toString());
                    }
                    try {
                        if (!context.isRestricted() && (method = context.getClass().getMethod(str2, View.class)) != null) {
                            this.f4298do = method;
                            this.f4296do = context;
                        }
                    } catch (NoSuchMethodException unused) {
                    }
                    context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
                }
            }
            try {
                this.f4298do.invoke(this.f4296do, view);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e);
            } catch (InvocationTargetException e2) {
                throw new IllegalStateException("Could not execute method for android:onClick", e2);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    public final View m2683case(Context context, String str, String str2) {
        String concat;
        C2680eE<String, Constructor<? extends View>> c2680eE = f4287do;
        Constructor<? extends View> orDefault = c2680eE.getOrDefault(str, null);
        if (orDefault == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            orDefault = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f4289do);
            c2680eE.put(str, orDefault);
        }
        orDefault.setAccessible(true);
        return orDefault.newInstance(this.f4294do);
    }

    /* renamed from: do, reason: not valid java name */
    public AppCompatAutoCompleteTextView mo2684do(Context context, AttributeSet attributeSet) {
        return new AppCompatAutoCompleteTextView(context, attributeSet);
    }

    /* renamed from: else, reason: not valid java name */
    public final void m2685else(TextView textView, String str) {
        if (textView != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }

    /* renamed from: for, reason: not valid java name */
    public AppCompatCheckBox mo2686for(Context context, AttributeSet attributeSet) {
        return new AppCompatCheckBox(context, attributeSet);
    }

    /* renamed from: if, reason: not valid java name */
    public AppCompatButton mo2687if(Context context, AttributeSet attributeSet) {
        return new AppCompatButton(context, attributeSet);
    }

    /* renamed from: new, reason: not valid java name */
    public AppCompatRadioButton mo2688new(Context context, AttributeSet attributeSet) {
        return new AppCompatRadioButton(context, attributeSet);
    }

    /* renamed from: try, reason: not valid java name */
    public AppCompatTextView mo2689try(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }
}
