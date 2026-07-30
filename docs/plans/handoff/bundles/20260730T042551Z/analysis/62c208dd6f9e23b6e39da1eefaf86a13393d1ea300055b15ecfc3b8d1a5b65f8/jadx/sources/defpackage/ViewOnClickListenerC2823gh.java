package defpackage;

import android.content.Context;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import com.facebook.appevents.InternalAppEventsLogger;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.search.SearchView;

/* renamed from: gh, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC2823gh implements View.OnClickListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ Object f13196do;

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f13197for;

    public /* synthetic */ ViewOnClickListenerC2823gh(Object obj, int i) {
        this.f13197for = i;
        this.f13196do = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f13197for;
        Object obj = this.f13196do;
        switch (i) {
            case 0:
                AbstractC2882hh abstractC2882hh = (AbstractC2882hh) obj;
                if (!CrashShieldHandler.isObjectCrashing(AbstractC2882hh.class)) {
                    try {
                        C0173Do.m401try(abstractC2882hh, "this$0");
                        Context context = abstractC2882hh.getContext();
                        if (!CrashShieldHandler.isObjectCrashing(abstractC2882hh)) {
                            try {
                                InternalAppEventsLogger.Companion.createInstance(context, null).logEventImplicitly(abstractC2882hh.f13344catch);
                            } catch (Throwable th) {
                                CrashShieldHandler.handleThrowable(th, abstractC2882hh);
                            }
                        }
                        View.OnClickListener onClickListener = abstractC2882hh.f13348if;
                        if (onClickListener == null) {
                            View.OnClickListener onClickListener2 = abstractC2882hh.f13345do;
                            if (onClickListener2 != null) {
                                onClickListener2.onClick(view);
                                break;
                            } else {
                                break;
                            }
                        } else {
                            onClickListener.onClick(view);
                            break;
                        }
                    } catch (Throwable th2) {
                        CrashShieldHandler.handleThrowable(th2, AbstractC2882hh.class);
                        return;
                    }
                }
                break;
            case 1:
                SearchView searchView = (SearchView) obj;
                searchView.f11285do.setText(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                searchView.m5854break();
                break;
            case 2:
                ((C3224kf) obj).m7275return();
                break;
            default:
                Aw aw = (Aw) obj;
                EditText editText = aw.f170do;
                if (editText != null) {
                    int selectionEnd = editText.getSelectionEnd();
                    EditText editText2 = aw.f170do;
                    if (editText2 != null && (editText2.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                        aw.f170do.setTransformationMethod(null);
                    } else {
                        aw.f170do.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        aw.f170do.setSelection(selectionEnd);
                    }
                    aw.m6574while();
                    break;
                }
                break;
        }
    }
}
