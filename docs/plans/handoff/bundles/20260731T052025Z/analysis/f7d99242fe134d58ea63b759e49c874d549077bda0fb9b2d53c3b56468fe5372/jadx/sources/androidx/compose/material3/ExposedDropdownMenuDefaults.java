package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import com.fsck.k9.ui.messagelist.MessageListFragmentKt$$ExternalSyntheticLambda3;
import java.util.ArrayList;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ExposedDropdownMenuDefaults {
    public static final ExposedDropdownMenuDefaults INSTANCE = new ExposedDropdownMenuDefaults();
    public static final PaddingValuesImpl ItemContentPadding = new PaddingValuesImpl(16.0f, 0.0f, 16.0f, 0.0f);

    public final void TrailingIcon(boolean z, Modifier modifier, Composer composer, int i) {
        Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.startRestartGroup(-1732824199);
        int i2 = i | (gapComposer.changed(z) ? 4 : 2) | 48;
        if (gapComposer.shouldExecute(i2 & 1, (i2 & 19) != 18)) {
            ImageVector imageVector = Icons$Filled._arrowDropDown;
            if (imageVector == null) {
                ImageVector.Builder builder = new ImageVector.Builder("Filled.ArrowDropDown", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, 224);
                int i3 = VectorKt.$r8$clinit;
                SolidColor solidColor = new SolidColor(Color.Black);
                ArrayList arrayList = new ArrayList(32);
                arrayList.add(new PathNode.MoveTo(7.0f, 10.0f));
                arrayList.add(new PathNode.RelativeLineTo(5.0f, 5.0f));
                arrayList.add(new PathNode.RelativeLineTo(5.0f, -5.0f));
                arrayList.add(PathNode.Close.INSTANCE);
                builder.m554addPathoIyEayM(1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 1.0f, 0.0f, 0, 0, 2, solidColor, null, "", arrayList);
                imageVector = builder.build();
                Icons$Filled._arrowDropDown = imageVector;
            }
            ImageVector imageVector2 = imageVector;
            float f = z ? 180.0f : 0.0f;
            Modifier.Companion companion = Modifier.Companion.$$INSTANCE;
            IconKt.m345Iconww6aTOc(imageVector2, null, ClipKt.rotate(companion, f), 0L, gapComposer, 48, 8);
            modifier2 = companion;
        } else {
            gapComposer.skipToGroupEnd();
            modifier2 = modifier;
        }
        RecomposeScopeImpl endRestartGroup = gapComposer.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.block = new MessageListFragmentKt$$ExternalSyntheticLambda3(i, 1, this, modifier2, z);
        }
    }
}
