package cmd

import (
	"fmt"

	"github.com/spf13/cobra"

	"github.com/mplx/gosample/numbers"
)

func init() {
}

// Execute of root package is executed when no command is given
func Execute() {
	RootCmd.Execute()
}

// RootCmd is performed when no cmd is given
var RootCmd = &cobra.Command{
	Use:   "gosample",
	Short: "primitive go sample",
	Long:  `mplx learning go`,
	Run: func(cmd *cobra.Command, args []string) {
		fmt.Println("mplx gosample ...", numbers.One(), numbers.Two(), numbers.Three())
	},
}
