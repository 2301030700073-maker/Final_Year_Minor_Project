package androidx.activity.compose.internal;

import androidx.activity.OnBackPressedCallback$OnBackPressedEventHandler;
import androidx.activity.OnBackPressedCallbackInfo;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.view.menu.BaseMenuWrapper;
import androidx.fragment.app.FragmentManager$1;
import coil3.ImageLoader$Builder;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class BackHandlerDispatcherCompat {
    public final ImageLoader$Builder navigationEventDispatcher;
    public final OnBackPressedDispatcher onBackPressedDispatcher;

    /* JADX WARN: Multi-variable type inference failed */
    public BackHandlerDispatcherCompat(ImageLoader$Builder imageLoader$Builder, OnBackPressedDispatcher onBackPressedDispatcher) {
        this.navigationEventDispatcher = imageLoader$Builder;
        this.onBackPressedDispatcher = onBackPressedDispatcher;
        if ((imageLoader$Builder == null ? onBackPressedDispatcher : imageLoader$Builder) != null) {
            return;
        }
        _UtilJvmKt$$ExternalSyntheticLambda0.m("At least one dispatcher (NavigationEventDispatcher or OnBackPressedDispatcher) must be non-null.");
        throw null;
    }

    public final void addHandler(BaseMenuWrapper baseMenuWrapper) {
        ImageLoader$Builder imageLoader$Builder = this.navigationEventDispatcher;
        if (imageLoader$Builder != null) {
            ImageLoader$Builder.addHandler$default(imageLoader$Builder, (BackHandlerCompat$navigationEventHandler$1) baseMenuWrapper.mMenuItems);
            return;
        }
        OnBackPressedDispatcher onBackPressedDispatcher = this.onBackPressedDispatcher;
        if (onBackPressedDispatcher == null) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unreachable");
            return;
        }
        FragmentManager$1 fragmentManager$1 = (FragmentManager$1) baseMenuWrapper.mContext;
        fragmentManager$1.getClass();
        OnBackPressedCallback$OnBackPressedEventHandler onBackPressedCallback$OnBackPressedEventHandler = new OnBackPressedCallback$OnBackPressedEventHandler(fragmentManager$1, new OnBackPressedCallbackInfo(fragmentManager$1, null));
        fragmentManager$1.eventHandlers.add(onBackPressedCallback$OnBackPressedEventHandler);
        ImageLoader$Builder.addHandler$default(onBackPressedDispatcher.getEventInput().dispatcher, onBackPressedCallback$OnBackPressedEventHandler);
    }

    public final void removeHandler(BaseMenuWrapper baseMenuWrapper) {
        if (this.navigationEventDispatcher != null) {
            ((BackHandlerCompat$navigationEventHandler$1) baseMenuWrapper.mMenuItems).remove();
        } else if (this.onBackPressedDispatcher != null) {
            ((FragmentManager$1) baseMenuWrapper.mContext).remove();
        } else {
            _UtilJvmKt$$ExternalSyntheticLambda0.m$1("Unreachable");
        }
    }
}
