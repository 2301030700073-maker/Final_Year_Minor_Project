package androidx.compose.material3;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.text.UStringsKt;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class BottomAppBarDefaults {
    public static final PaddingValuesImpl ContentPadding;

    static {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = AppBarKt.LocalSingleRowTopAppBarOverride;
        ContentPadding = OffsetKt.m126PaddingValuesa9UjIt4$default(4.0f, 4.0f, 4.0f, RecyclerView.DECELERATION_RATE, 8);
        OffsetKt.m126PaddingValuesa9UjIt4$default(UStringsKt.ContainerLeadingSpace, RecyclerView.DECELERATION_RATE, UStringsKt.ContainerTrailingSpace, RecyclerView.DECELERATION_RATE, 10);
    }
}
