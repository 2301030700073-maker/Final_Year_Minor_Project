package org.wikipedia.theme;

import android.graphics.Typeface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelKt;
import androidx.room.Room;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.AwaitKt;
import okhttp3.MultipartBody;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.jsoup.Jsoup;
import org.wikipedia.R;
import org.wikipedia.WikipediaApp;
import org.wikipedia.settings.Prefs;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lorg/wikipedia/theme/ThemeFittingRoomFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "app"}, k = 1, mv = {2, 3, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ThemeFittingRoomFragment extends Fragment {
    public MultipartBody.Builder _binding;

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        int i = 0;
        View inflate = layoutInflater.inflate(R.layout.fragment_theme_fitting_room, viewGroup, false);
        FrameLayout frameLayout = (FrameLayout) inflate;
        int i2 = R.id.theme_test_image;
        Continuation continuation = null;
        if (((ImageView) Room.findChildViewById(inflate, R.id.theme_test_image)) != null) {
            i2 = R.id.theme_test_text;
            TextView textView = (TextView) Room.findChildViewById(inflate, R.id.theme_test_text);
            if (textView != null) {
                i2 = R.id.theme_test_title;
                TextView textView2 = (TextView) Room.findChildViewById(inflate, R.id.theme_test_title);
                if (textView2 != null) {
                    this._binding = new MultipartBody.Builder(frameLayout, textView, textView2);
                    updateTextSize$1();
                    Prefs prefs = Prefs.INSTANCE;
                    Typeface typeface = Prefs.getFontFamily().equals(getResources().getString(R.string.font_family_sans_serif)) ? Typeface.SANS_SERIF : Typeface.SERIF;
                    MultipartBody.Builder builder = this._binding;
                    builder.getClass();
                    ((TextView) builder.parts).setTypeface(typeface);
                    MultipartBody.Builder builder2 = this._binding;
                    builder2.getClass();
                    ((TextView) builder2.type).setTypeface(typeface);
                    AwaitKt.launch$default(ViewModelKt.getLifecycleScope(getViewLifecycleOwner()), null, null, new ThemeFittingRoomFragment$onCreateView$1(this, continuation, i), 3);
                    MultipartBody.Builder builder3 = this._binding;
                    builder3.getClass();
                    FrameLayout frameLayout2 = (FrameLayout) builder3.boundary;
                    frameLayout2.getClass();
                    return frameLayout2;
                }
            }
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m$3("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        this._binding = null;
        this.mCalled = true;
    }

    public final void updateTextSize$1() {
        WikipediaApp wikipediaApp = WikipediaApp.instance;
        float fontSize = Jsoup.getInstance().getFontSize(false);
        MultipartBody.Builder builder = this._binding;
        builder.getClass();
        ((TextView) builder.type).setTextSize(fontSize);
        MultipartBody.Builder builder2 = this._binding;
        builder2.getClass();
        ((TextView) builder2.parts).setTextSize(fontSize * 1.6f);
    }
}
