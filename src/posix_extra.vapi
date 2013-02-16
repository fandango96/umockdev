[CCode (cprefix = "", lower_case_cprefix = "")]
namespace Posix {
    // https://bugzilla.gnome.org/show_bug.cgi?id=693411
    [CCode (cheader_filename = "sys/types.h")]
    uint major (dev_t dev);
    [CCode (cheader_filename = "sys/types.h")]
    uint minor (dev_t dev);

    // https://bugzilla.gnome.org/show_bug.cgi?id=693410
    [CCode (cheader_filename = "stdlib.h", cname="realpath")]
    public string? fixed_realpath (string path, [CCode (array_length = false)] uint8[]? resolved_path = null);

#if !VALA_0_18
    // not yet available with Vala 0.16, backport from 0.18
    [CCode (cheader_filename = "unistd.h")]
    public int execvp (string path, [CCode (array_length = false, null_terminated = true)] string[] arg);
#endif
}

