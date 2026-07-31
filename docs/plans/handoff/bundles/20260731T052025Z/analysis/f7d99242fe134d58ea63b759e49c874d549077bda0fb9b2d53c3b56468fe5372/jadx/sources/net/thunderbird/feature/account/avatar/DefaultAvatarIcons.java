package net.thunderbird.feature.account.avatar;

import androidx.compose.ui.graphics.vector.ImageVector;
import java.util.Locale;
import kotlin.enums.EnumEntriesList;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Filled;
import net.thunderbird.core.ui.compose.designsystem.atom.icon.Icons$Outlined;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class DefaultAvatarIcons {
    public static final /* synthetic */ EnumEntriesList $ENTRIES;
    public static final /* synthetic */ DefaultAvatarIcons[] $VALUES;
    public static final DefaultAvatarIcons Person;
    public final ImageVector icon;
    public final String id;

    static {
        DefaultAvatarIcons defaultAvatarIcons = new DefaultAvatarIcons(0, Icons$Filled.Star, "Star");
        DefaultAvatarIcons defaultAvatarIcons2 = new DefaultAvatarIcons(1, Icons$Outlined.Person, "Person");
        Person = defaultAvatarIcons2;
        DefaultAvatarIcons[] defaultAvatarIconsArr = {defaultAvatarIcons, defaultAvatarIcons2, new DefaultAvatarIcons(2, Icons$Outlined.Hearth, "Hearth"), new DefaultAvatarIcons(3, Icons$Outlined.Book, "Book"), new DefaultAvatarIcons(4, Icons$Outlined.Flower, "Flower"), new DefaultAvatarIcons(5, Icons$Outlined.Spa, "Spa"), new DefaultAvatarIcons(6, Icons$Outlined.Work, "Work"), new DefaultAvatarIcons(7, Icons$Outlined.School, "School"), new DefaultAvatarIcons(8, Icons$Outlined.Pets, "Pets"), new DefaultAvatarIcons(9, Icons$Outlined.Group, "Group"), new DefaultAvatarIcons(10, Icons$Outlined.Fingerprint, "Fingerprint"), new DefaultAvatarIcons(11, Icons$Outlined.Bank, "Bank"), new DefaultAvatarIcons(12, Icons$Outlined.Smile, "Smile"), new DefaultAvatarIcons(13, Icons$Outlined.Badge, "Badge"), new DefaultAvatarIcons(14, Icons$Outlined.Game, "Game"), new DefaultAvatarIcons(15, Icons$Outlined.Image, "Image"), new DefaultAvatarIcons(16, Icons$Outlined.Rocket, "Rocket")};
        $VALUES = defaultAvatarIconsArr;
        $ENTRIES = new EnumEntriesList(defaultAvatarIconsArr);
    }

    public DefaultAvatarIcons(int i, ImageVector imageVector, String str) {
        this.icon = imageVector;
        String lowerCase = name().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        this.id = lowerCase;
    }

    public static DefaultAvatarIcons valueOf(String str) {
        return (DefaultAvatarIcons) Enum.valueOf(DefaultAvatarIcons.class, str);
    }

    public static DefaultAvatarIcons[] values() {
        return (DefaultAvatarIcons[]) $VALUES.clone();
    }
}
